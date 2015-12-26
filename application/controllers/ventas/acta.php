<?php header("Content-type: text/html; charset=utf-8"); 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Acta extends CI_Controller {
    public function __construct(){
        parent::__construct(); 
        if(!isset($_SESSION['login'])) die("Sesion terminada. <a href='".  base_url()."'>Registrarse e ingresar.</a> ");           
        $this->load->model(ventas.'acta_model');
        $this->load->model(ventas.'actaprofesor_model');
        $this->load->model(ventas.'actadetalle_model');
        $this->load->model(ventas.'alumno_model');
        $this->load->model(ventas.'actividad_model');
        $this->load->model(ventas.'profesor_model');
        $this->load->model(maestros.'persona_model');        
        $this->load->model(seguridad.'permiso_model');          
        $this->load->model(almacen.'curso_model');  
        $this->load->model(maestros.'ciclo_model');  
        $this->load->model(maestros.'aula_model'); 
        $this->load->model(maestros.'tipoestudio_model'); 
        $this->load->model(maestros.'tipoestudiociclo_model'); 
        $this->load->model(maestros.'local_model'); 
        $this->load->helper('menu');
        $this->configuracion = $this->config->item('conf_pagina');
        $this->login   = $this->session->userdata('login');
    }

    public function index()
    {
        $this->load->view('seguridad/inicio');	
    }

    public function listar($j=0){
        $filter           = new stdClass();
        $filter->rol      = $this->session->userdata('rolusu');		
        $filter->order_by = array("m.MENU_Orden"=>"asc");
        $menu       = get_menu($filter);                
        $filter     = new stdClass();
        if($_SESSION["acceso"]==2)  $filter->curso = $_SESSION["codcurso"];
        if($_SESSION["acceso"]==3)  $filter->profesor = $_SESSION["codprofesor"];   
        $filter->order_by = array("p.ACTAP_Codigo"=>"desc");
        $filter_not = new stdClass(); 
        $registros = count($this->acta_model->listar($filter,$filter_not));
        $matricula   = $this->acta_model->listar($filter,$filter_not,$this->configuracion['per_page'],$j);
        $item      = 1;
        $lista     = array();
        if(count($matricula)>0){
            foreach($matricula as $indice => $value){
                $lista[$indice]           = new stdClass();
                $lista[$indice]->codigo   = $value->ACTAP_Codigo;
                $lista[$indice]->nombres  = $value->PERSC_Nombre;
                $lista[$indice]->paterno  = $value->PERSC_ApellidoPaterno;
                $lista[$indice]->materno  = $value->PERSC_ApellidoMaterno;
                $lista[$indice]->fechareg = $value->fechareg;
                $lista[$indice]->fecha    = date_sql($value->ACTAC_Fecha);
                $lista[$indice]->titulo   = $value->ACTAC_Titulo;
                $lista[$indice]->ciclo    = $value->COMPC_Nombre;
                $lista[$indice]->tipoestudio = $value->TIPC_Nombre;
                $filter        = new stdClass();
                $filter->curso = $value->PROD_Codigo;
                $curso = $this->curso_model->obtener($filter);
                $lista[$indice]->curso    = $curso->PROD_Nombre;
            }
        }
        $configuracion = $this->configuracion;
        $configuracion['base_url']    = base_url()."index.php/ventas/orden/listar";
        $configuracion['total_rows']  = $registros;
        $this->pagination->initialize($configuracion);
        /*Enviamos los datos a la vista*/
        $data['lista']        = $lista;
        $data['titulo']       = "Reuniones de plana";
        $data['btnNuevo']     = "Crear una nueva reunion";
        $data['menu']         = $menu;    
        $data['header']       = get_header();
        $data['j']            = $j;
        $data['registros']    = $registros;
        $data['paginacion']   = $this->pagination->create_links();
        $this->load->view("ventas/acta_index",$data);
    }

    public function editar($accion,$codigo="",$codigodetalle=""){
        $ciclo   = $this->input->get_post('ciclo'); 
        $tipoestudio = $this->input->get_post('tipoestudio'); 
        $curso   = $this->input->get_post('curso'); 
        $titulo  = $this->input->get_post('titulo'); 
        $hinicio = $this->input->get_post('hinicio'); 
        $hfin    = $this->input->get_post('hfin'); 
        $agenda  = $this->input->get_post('agenda'); 
        $fecha   = $this->input->get_post('fecha'); 
        $lista   = new stdClass();
        if($accion == "e"){
            $filter             = new stdClass();
            $filter->acta       = $codigo;
            $acta               = $this->acta_model->obtener($filter);
            $lista->profesor    = $acta->PROP_Codigo;  
            $lista->fecha       = $fecha!=""?$fecha:date_sql($acta->ACTAC_Fecha);  
            $lista->acta        = $acta->ACTAP_Codigo;
            $lista->titulo      = $titulo!=""?$titulo:$acta->ACTAC_Titulo;
            $lista->agenda      = $agenda!=""?$agenda:$acta->ACTAC_Agenda;
            $lista->detalle     = $acta->ACTAC_Detalle;
            $lista->hinicio     = $hinicio!=""?$hinicio:substr($acta->ACTAC_Hinicio,0,5);
            $lista->hfin        = $hfin!=""?$hfin:substr($acta->ACTAC_Hfin,0,5);
            $lista->curso       = $curso!=""?$curso:$acta->PROD_Codigo;
            $lista->ciclo       = $ciclo!=""?$ciclo:$acta->CICLOP_Codigo;
            $lista->tipoestudio = $tipoestudio!=""?$tipoestudio:$acta->TIPCICLOP_Codigo;
            $filter             = new stdClass();
            $filter->acta       = $codigo;
            $lista->actadetalle = $this->actadetalle_model->listar($filter);            
        }
        elseif($accion == "n"){ 
            $lista->profesor    = "";  
            $lista->fecha       = date("d/m/Y",time());
            $lista->acta        = "";
            $lista->titulo      = $titulo;
            $lista->agenda      = $agenda;
            $lista->detalle     = "";
            $lista->hinicio     = $hinicio;
            $lista->hfin        = $hfin;
            $lista->curso       = $curso;
            $lista->ciclo       = $ciclo;
            $lista->tipoestudio = $tipoestudio;
            $lista->actadetalle = array();
        } 
        $arrEstado             = array("0"=>"::Seleccione::","1"=>"ACTIVO","2"=>"INACTIVO");
        $data['titulo']        = $accion=="e"?"Editar Reunion":"Nueva Reunion"; 
        $data['form_open']     = form_open('',array("name"=>"frmPersona","id"=>"frmPersona","onsubmit"=>"return valida_guiain();"));     
        $data['form_close']    = form_close();         
        $data['lista']	       = $lista;   
        $data['accion']	       = $accion;     
        $filter = new stdClass();
        $filter->estado = 1;
        $data['selciclo']      = form_dropdown('ciclo',$this->ciclo_model->seleccionar('0',$filter),$lista->ciclo,"id='ciclo' class='comboMedio' ".($accion=="e"?"disabled":"")."");         
        $filter = new stdClass();
        $filter->ciclo         = $lista->ciclo;
        $data['seltipoestudio']= form_dropdown('tipoestudio',$this->tipoestudiociclo_model->seleccionar('0',$filter),$lista->tipoestudio,"id='tipoestudio' class='comboMedio' ".($accion=="e"?"disabled":"")."");         
        $filter = new stdClass();
        if(isset($_SESSION["codcurso"]) && $_SESSION["codcurso"]!=0)  $filter->curso = $_SESSION["codcurso"];
        $data['selcurso']      = form_dropdown('curso',$this->curso_model->seleccionar('0',$filter),$lista->curso,"id='curso' class='comboMedio' ".($accion=="e"?"disabled":"").""); 
        $filter = new stdClass();
        $filter->curso = $lista->curso;
        $filter->order_by = array("d.PERSC_ApellidoPaterno"=>"asc","d.PERSC_ApellidoMaterno"=>"asc");
        $data['responsable']  = $this->profesor_model->seleccionar('0',$filter);
        $data['selprofesor']  = form_dropdown('profesor',$this->profesor_model->seleccionar('0',$filter),$lista->profesor,"id='profesor' class='comboGrande' ".($accion=="e"?"disabled":"").""); 
        $data['oculto']       = form_hidden(array("accion"=>$accion,"codigo"=>$codigo));
        $this->load->view("ventas/acta_nuevo",$data);
    }

    public function grabar(){
        $accion = $this->input->get_post('accion');
        $codigo = $this->input->get_post('codigo');
        $codigodetalle = $this->input->get_post('codigodetalle');   
        $data   = array(
			"ACTAC_Fecha"        => date_sql_ret($this->input->post('fecha')),
                        "PROP_Codigo"        => $this->input->post('profesor'),
                        "ACTAC_Titulo"       => $this->input->post('titulo'),
                        "ACTAC_Hinicio"      => $this->input->post('hinicio'),
                        "ACTAC_Hfin"         => $this->input->post('hfin'),
                        "ACTAC_Agenda"       => $this->input->post('agenda'),
                        "TIPCICLOP_Codigo"   => $this->input->post('tipoestudio')
                       );
        $resultado = false;
        if($accion == "n"){
            $resultado = true;
            $codigo = $this->acta_model->insertar($data);                      
        }
        elseif($accion == "e"){
            $resultado = true;
            $this->acta_model->modificar($codigo,$data);                                
        }  
        /*GRABAR DETALLE*/
        $acuerdo     = $this->input->get_post('acuerdo');
        $nombre      = $this->input->get_post('nombre');
        if(count($codigodetalle)>0 && is_array($codigodetalle)){
            foreach($codigodetalle as $item=>$value){
                $data = array(
                            "ACTAP_Codigo"         => $codigo,
                            "ACTADETC_Observacion" => $acuerdo[$item],
                            "ACTADETC_Nombre"      => $nombre[$item]            
                        );
                if($codigodetalle[$item]==""){//Insertar
                   $this->actadetalle_model->insertar($data); 
                }
                else{//Editar
                   $this->actadetalle_model->modificar($codigodetalle[$item],$data); 
                }  
            }         
        }
        echo json_encode($resultado);
    }
	
    public function eliminar(){
        $codigo = $this->input->post('codigo');
        $resultado = false;
        $filter = new stdClass();
        $filter->acta = $codigo;
        $this->actaprofesor_model->eliminar($filter);
        $this->actadetalle_model->eliminar($filter);
        $this->acta_model->eliminar($filter);
        $resultado = true;
        echo json_encode($resultado);
    }
    
    public function eliminardetalle(){
        $codigo = $this->input->post('codigo');
        $filter = new stdClass();
        $filter->actadetalle = $codigo;
        $resultado = false;
        $this->actadetalle_model->eliminar($filter);
        $resultado = true;
        echo json_encode($resultado);
    } 
    
    public function obtenerdetalle(){
        $obj    = $this->input->post('objeto');
        $filter = json_decode($obj);
        $aulas  = $this->actadetalle_model->obtener($filter);
        $resultado = json_encode($aulas);       
        echo $resultado;        
    }    

    public function ver($codigo){
        $filter           = new stdClass();
        $filter->acta     = $codigo;
        $actas            = $this->acta_model->obtener($filter);
        $actasdetalle     = $this->actadetalle_model->listar($filter);
        $asistencia       = $this->actaprofesor_model->listar($filter);
        $codigo           = $actas->ACTAP_Codigo;
        $codcurso         = $actas->PROD_Codigo;
        $filter           = new stdClass();
        $filter->curso    = $codcurso; 
        $cursos           = $this->curso_model->obtener($filter);      
        $this->load->library("fpdf/pdf");
        $CI = & get_instance();
        $CI->pdf->FPDF('P');
        $CI->pdf->AliasNbPages();
        $CI->pdf->AddPage();
        $CI->pdf->SetTextColor(0,0,0);
        $CI->pdf->SetFillColor(216,216,216);
        $CI->pdf->SetFont('Arial','B',11);
        $CI->pdf->Image('img/uni.gif',10,8,10);
        $CI->pdf->Cell(0,7,"Reunion de plana Nro: ".$codigo,0,1,"C",0);
        $CI->pdf->Cell(0,7,"Curso: ".$cursos->PROD_Nombre,0,1,"C",0);
        $CI->pdf->Cell(0,7,"Tipo de estudio: ".$actas->TIPC_Nombre,0,1,"C",0);
         $CI->pdf->SetFont('Arial','B',7);
        $CI->pdf->Cell(120,5, "" ,0,1,"L",0);
        $CI->pdf->Cell(0,5, "GENERALES:",0,1,"L",0);
		$CI->pdf->Cell(20,5, "Fecha:" ,0,0,"L",0);
		$CI->pdf->Cell(0,5,date_sql($actas->ACTAC_Fecha),0,1,"L",0);		
		$CI->pdf->Cell(20,5, "Nombre:" ,0,0,"L",0);
		$CI->pdf->Cell(0,5,$actas->ACTAC_Titulo,0,1,"L",0);
		$CI->pdf->Cell(20,5, "Descripcion:" ,0,0,"L",0);
		$CI->pdf->Cell(0,5, $actas->ACTAC_Agenda ,0,1,"L",0);		
		$CI->pdf->Cell(0,5, "ACUERDOS:",0,1,"L",0);
        foreach($actasdetalle as $item => $value){
            $CI->pdf->Cell(4,5, ($item+1).")" ,0,0,"L",0);
            $CI->pdf->Cell(15,5, $value->ACTADETC_Nombre.":" ,0,0,"L",0);
            $CI->pdf->Cell(1,1, "" ,0,0,"L",0);
            $CI->pdf->Cell(140,5,$value->ACTADETC_Observacion,0,1,"L",0);             
        }
        $CI->pdf->Cell(0,5, "ASISTENCIA: " ,0,1,"L",0);
        $CI->pdf->Cell(90,1, "" ,0,1,"L",0);  
        $CI->pdf->Cell(60,5, "PROFESOR" ,1,0,"C",0);
        $CI->pdf->Cell(20,5, "H.INGRESO" ,1,0,"C",0);
        $CI->pdf->Cell(20,5, "H.SALIDA" ,1,0,"C",0);  
		$CI->pdf->Cell(0,5, "JUSTIFICACION" ,1,1,"C",0);  
		if(count($asistencia)>0){
			foreach($asistencia as $item => $value){
				$CI->pdf->Cell(60,5, $value->PERSC_ApellidoPaterno." ".$value->PERSC_ApellidoMaterno.",".$value->PERSC_Nombre ,1,0,"L",0);
				$CI->pdf->Cell(20,5, $value->ACTAPROFC_Hingreso,1,0,"C",0);
				$CI->pdf->Cell(20,5, $value->ACTAPROFC_Hsalida ,1,0,"C",0);         
				$CI->pdf->Cell(0,5, $value->ACTAPROFC_Observacion ,1,1,"L",0); 
			}
		}
		else{
			$CI->pdf->Cell(180,5,"::NO EXISTEN REGISTROS::",1,1,"C",0);
		}
         $CI->pdf->Cell(90,1, "" ,0,1,"L",0);         
        $CI->pdf->Cell(0,5, "EXPOSICION: " ,0,1,"L",0); 
         $CI->pdf->Cell(90,1, "" ,0,1,"L",0);
        $CI->pdf->Output();
    }
    
     public function export_excel($type) {
        if($this->session->userdata('data_'.$type)){
            $result = $this->session->userdata('data_'.$type);
            $arr_columns = array();            
            switch ($type) {
                case 'listar_requisiciones_ot':
                    $this->reports_model->rpt_general('rpt_'.$type, 'REQUISICIONES POR OT', $result["columns"], $result["rows"],$result["group"]);
                    break;
                case 'listar_control_pesos1':
                case 'listar_control_pesos2':
                case 'listar_control_pesos3':
                case 'listar_control_pesos4':
                case 'listar_control_pesos5':
                case 'listar_control_pesos':
                    $arr_export_detalle = array();
                    $arr_columns[]['STRING']  = 'NRO.OT';
                    $arr_columns[]['STRING']  = 'NOMBRE';
                    $arr_columns[]['STRING']  = 'PROYECTO';
                    $arr_columns[]['STRING']  = 'TIPO PRODUCTO';
                    $arr_columns[]['DATE']    = 'F.INICIO';
                    $arr_columns[]['DATE']    = 'F.TERMINO';
                    $arr_columns[]['NUMERIC'] = 'W.REQUISICION';
                    $arr_columns[]['NUMERIC'] = 'W.PPTO.';
                    //$arr_columns[]['NUMERIC'] = 'W.METRADO';
                    $arr_columns[]['NUMERIC'] = 'W.O.TECNICA';
                    $arr_columns[]['NUMERIC'] = 'W.GALVANIZADO';
                    $arr_columns[]['NUMERIC'] = 'W.PRODUCCION';
                    $arr_columns[]['NUMERIC'] = 'W.ALMACEN';
                    $arr_group = array();
                    $this->reports_model->rpt_general('rpt_'.$type,'Control de pesos',$arr_columns,$result["rows"],$arr_group); 
                    break;
                case'productos_x_ot':
                    $arr_export_detalle = array();
                    $arr_columns[]['STRING']  = 'NRO.OT';
                    $arr_columns[]['STRING']  = 'T.TORRE';
                    $arr_columns[]['STRING']  = 'CODIGO';
                    $arr_columns[]['STRING']  = 'FAMILIA';
                    $arr_columns[]['STRING']  = 'DESCRIPCION';
                    $arr_columns[]['NUMERIC'] = 'INGRESO';
                    $arr_columns[]['NUMERIC'] = 'SALIDA';
                    $arr_columns[]['NUMERIC'] = 'SALDO';
                    $arr_columns[]['NUMERIC'] = 'INGRESO';
                    $arr_columns[]['NUMERIC'] = 'SALIDA';
                    $arr_columns[]['NUMERIC'] = 'SALDO';
                    $arr_group = array('E5:G5'=>'CANTIDAD','H5:K5'=>'MONTO');
                    $arr_group = array();
                    $this->reports_model->rpt_general('rpt_'.$type,'pRODUCTOS POR OT',$arr_columns,$result["rows"],$arr_group); 
                    break;
            }
        }else{
            echo "<div style='color:rgb(150,150,150);padding:10px;width:560px;height:160px;border:1px solid rgb(210,210,210);'>
                No hay datos para exportar
                </div>";
        }
    }
}