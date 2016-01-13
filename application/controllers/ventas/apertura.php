<?php header("Content-type: text/html; charset=utf-8"); 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Apertura extends CI_Controller {
    public function __construct(){
        parent::__construct(); 
        if(!isset($_SESSION['login'])) die("Sesion terminada. <a href='".  base_url()."'>Registrarse e ingresar.</a> ");           
        $this->load->model(ventas.'apertura_model');
        $this->load->model(ventas.'actividad_model');  
        $this->load->model(seguridad.'permiso_model');          
        $this->load->model(maestros.'ciclo_model');  
        $this->load->model(maestros.'aula_model'); 
        $this->load->model(maestros.'tipoestudio_model'); 
        $this->load->model(maestros.'tipoestudiociclo_model'); 
        $this->load->model(maestros.'local_model'); 
        $this->load->model(chamilo.'course_model'); 
        $this->load->model(chamilo.'course_rel_user_model'); 
        $this->load->model(chamilo.'c_course_setting_model'); 
        $this->load->model(chamilo.'c_document_model'); 
        $this->load->model(chamilo.'access_url_rel_course_model'); 
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
        $filter->order_by = array("h.CICLOP_Codigo"=>"desc","f.AULAC_Nombre"=>"asc");
        $filter_not = new stdClass(); 
        $registros = count($this->apertura_model->listar($filter,$filter_not));
        $matricula   = $this->apertura_model->listar($filter,$filter_not,$this->configuracion['per_page'],$j);
        $item      = 1;
        $lista     = array();
        if(count($matricula)>0){
            foreach($matricula as $indice => $value){
                $lista[$indice]           = new stdClass();
                $lista[$indice]->codigo   = $value->APERTUP_Codigo;
                $lista[$indice]->local    = $value->LOCC_Nombre;
                $lista[$indice]->aula     = $value->AULAC_Nombre;
                $lista[$indice]->turno     = $value->TURNOP_Codigo;
		$lista[$indice]->ciclo    = $value->COMPC_Nombre;
                $lista[$indice]->tipoestudio = $value->TIPC_Nombre;
                $lista[$indice]->estado   = $value->APERTUC_FlagEstado;
                $lista[$indice]->fecha    = date_sql($value->APERTUC_Fecha);
            }
        }
        $configuracion = $this->configuracion;
        $configuracion['base_url']    = base_url()."index.php/ventas/orden/listar";
        $configuracion['total_rows']  = $registros;
        $this->pagination->initialize($configuracion);
        /*Enviamos los datos a la vista*/
        $data['lista']        = $lista;
        $data['menu']         = $menu;
        $data['header']       = get_header();
        $data['arrturno']     = array("0"=>"::Seleccione::","1"=>"Mañana","2"=>"Tarde","3"=>"Noche");
        $data['titulo']       = "Apertura de aulas";
        $data['nuevo']        = "Crear una nueva apertura de aulas";
        $data['form_open']    = form_open('',array("name"=>"frmPersona","id"=>"frmPersona","onsubmit"=>"return valida_guiain();"));     
        $data['form_close']   = form_close();         
        $data['j']            = $j;
        $data['registros']    = $registros;
        $data['paginacion']   = $this->pagination->create_links();
        $this->load->view("ventas/apertura_index",$data);
    }

    public function editar($accion,$codigo=""){
        $ciclo = $this->input->get_post('ciclo'); 
        $local = $this->input->get_post('local'); 
        $tipoestudiociclo = $this->input->get_post('tipoestudiociclo'); 
        $lista = new stdClass();
        if($accion == "e"){
            $filter             = new stdClass();
            $filter->apertura   = $codigo;
            $apertura           = $this->apertura_model->obtener($filter);
            $lista->codigo      = $apertura->APERTUP_Codigo;
            $lista->ciclo       = $ciclo!=""?$ciclo:$apertura->CICLOP_Codigo;
            $lista->fecha       = date_sql(substr($apertura->APERTUC_Fecha,0,10)); 
            $lista->tipoestudiociclo = $apertura->TIPCICLOP_Codigo;
	    $lista->local       = $local!=""?$local:$apertura->LOCP_Codigo; 
            $lista->aula        = $apertura->AULAP_Codigo;
            $lista->turno       = $apertura->TURNOP_Codigo;
            $lista->estado      = $apertura->APERTUC_FlagEstado;
            $filter             = new stdClass();
            $filter->apertura   = $codigo;
            $lista->aperturadetalle = $this->course_model->listar($filter);
        }
        elseif($accion == "n"){ 
            $lista->codigo      = "";  
            $lista->ciclo       = $ciclo;
            $lista->fecha       = date("d/m/Y",time());
            $lista->tipoestudiociclo = $tipoestudiociclo;
            $lista->local       = $local;
            $lista->aula        = 0;
            $lista->turno       = 0;
            $lista->estado      = "1";
            $lista->aperturadetalle = array();
        } 
        $arrEstado          = array("0"=>"::Seleccione::","1"=>"ACTIVO","2"=>"INACTIVO");
        $arrTurno           = array("0"=>"::Seleccione::","1"=>"Mañana","2"=>"Tarde","3"=>"Noche");
        $data['titulo']     = $accion=="e"?"Editar Apertura de aula":"Nueva Apertura de aula"; 
        $data['form_open']  = form_open('',array("name"=>"frmPersona","id"=>"frmPersona","onsubmit"=>"return valida_guiain();"));     
        $data['form_close'] = form_close();         
        $data['lista']	    = $lista;  
        $data['accion']	    = $accion;    
        $data['selciclo']   = form_dropdown('ciclo',$this->ciclo_model->seleccionar("0"),$lista->ciclo,"id='ciclo' class='comboMedio' ".($accion == "e"?"disabled='disabled'":"")."");         
        $data['sellocal']   = form_dropdown('local',$this->local_model->seleccionar("0"),$lista->local,"id='local' class='comboMedio' ".($accion == "e"?"disabled='disabled'":"")."");
        $filter             = new stdClass();
        $filter->local      = $lista->local;
        $data['selaula']    = form_dropdown('aula',$this->aula_model->seleccionar("0",$filter),$lista->aula,"id='aula' class='comboMedio' ".($accion == "e"?"disabled='disabled'":"")."");
        $data['selturno']   = form_dropdown('turno',$arrTurno,$lista->turno,"id='turno' class='comboMedio' ".($accion == "e"?"disabled='disabled'":"")."");
        $data['selestado']  = form_dropdown('estado',$arrEstado,$lista->estado,"id='estado' class='comboMedio'");
        $filter             = new stdClass();
        $filter->ciclo      = $lista->ciclo;
        $data['seltipoe']   = form_dropdown('tipoestudiociclo',$this->tipoestudiociclo_model->seleccionar("0",$filter),$lista->tipoestudiociclo,"id='tipoestudiociclo' class='comboMedio' ".($accion == "e"?"disabled='disabled'":"")."");
        $data['oculto']     = form_hidden(array("accion"=>$accion,"codigo"=>$codigo));
        $this->load->view("ventas/apertura_nuevo",$data);
    }

    public function grabar(){
        $accion = $this->input->get_post('accion');
        $codigo = $this->input->get_post('codigo');
        $data   = array(
                        "TIPCICLOP_Codigo"    => $this->input->post('tipoestudiociclo'),
			"AULAP_Codigo"        => $this->input->post('aula'),
                        "CICLOP_Codigo"       => $this->input->post('ciclo'),
                        "APERTUC_Descripcion" => "",
                        "TURNOP_Codigo"       => $this->input->post('turno'),
                        "APERTUC_FlagEstado"  => $this->input->post('estado'),
                        "APERTUC_Fecha"       => date_sql_ret($this->input->post('fecha'))
                       );
        $resultado = false;
        if($accion == "n"){
            $resultado = true;            
            $codigo = $this->apertura_model->insertar($data); 
        }
        elseif($accion == "e"){
            $resultado = true;            
            $this->apertura_model->modificar($codigo,$data);
        }  
        $arrVariable = array(
                "email_alert_manager_on_new_doc","email_alert_on_new_doc_dropbox",
                "allow_user_edit_agenda","allow_user_edit_announcement",
                "email_alert_manager_on_new_quiz","allow_user_image_forum",
                "course_theme","allow_learning_path_theme",
                "allow_open_chat_window","email_alert_to_teacher_on_new_user_in_course",
                "allow_user_view_user_list","display_info_advance_inside_homecourse",
                "email_alert_students_on_new_homework","enable_lp_auto_launch",
                "pdf_export_watermark_text","allow_public_certificates","documents_default_visibility"
            );
        $arrCategoria = array(
                "work","dropbox","agenda",
                "announcement", "quiz","forum",
                "theme","theme","chat", 
                "registration","user","thematic_advance",
                "work","learning_path", "learning_path",
                "certificates",""
            );
        /*Grabar detalle*/
        $course_id = $this->input->get_post('course_id');
        $cciclo = $this->input->get_post('cursociclo');
        $code   = $this->input->get_post('code');
        $title = $this->input->get_post('title');
        $disk_quota = $this->input->get_post('disk_quota');
        if(count($course_id)>0 && is_array($course_id)){
            foreach($course_id as $item=>$value){
                $data = array(
                            "APERTUP_Codigo"  => $codigo,        
                            "CURSOCIP_Codigo" => $cciclo[$item],
                            "code"            => $code[$item],                   
                            "directory"       => $code[$item],
                            "course_language" => "spanish",
                            "title"           => $title[$item],
                            "description"     => "Descripción del curso",
                            "visibility"      => 1,
                            "show_score"      => 1,
                            "visual_code"     => $code[$item],
                            "disk_quota"      => (int)($disk_quota[$item]*1024*1024),
                            "department_url"  => "http://",
                            "subscribe"       => 1,
                            "unsubscribe"     => 0,
                            "activate_legal"  => 0,
                            "course_type_id"  => 1,
                            "creation_date"   => date("Y-m-d h:i:s",time())
                        );
                if($course_id[$item]==""){
                    $this->curso_id = $this->course_model->insertar($data); 
                }
                else{
                    $this->curso_id = $course_id[$item];
                    $this->course_model->modificar($course_id[$item],$data); 
                }    
                //Grabo en las tablas relacionadas de chamila course_rel_user
                $data = array(
                            "course_code" => $code[$item],
                            "user_id"     => 1,
                            "status"      => 1,
                            "role"        => "",
                            "sort"        => 1
                        );
                if($course_id[$item]==""){
                    $this->course_rel_user_model->insertar($data); 
                }              
                //Grabo en las tablas relacionadas de chamila c_course_setting
                if($course_id[$item]==""){
                    for($i=0;$i<17;$i++){
                        $data = array("c_id"=>$this->curso_id,"id"=> $i+1,"variable"=>$arrVariable[$i],"category"=>$arrCategoria[$i],"value"=>0);
                        $this->c_course_setting_model->insertar($data); 
                    }                    
                }
                //Grabo en las tablas relacionadas de chamila c_document
                if($course_id[$item]==""){
                    $data  = array("c_id"=>$this->curso_id,"id"=>1,"path"=>"/shared_folder","title" => "Carpetas de los usuarios","filetype"=>"folder");
                    $data2 = array("c_id"=>$this->curso_id,"id"=>2,"path"=>"/chat_files","title" => "Historial de conversaciones en el chat","filetype"=>"folder");
                    $this->c_document_model->insertar($data); 
                    $this->c_document_model->insertar($data2);                     
                }
                //Grabo en las tablas relacionadas de chamila access_url_rel_course
                if($course_id[$item]==""){
                    $data = array("access_url_id"=>1,"course_code"=>$code[$item]);
                    $this->access_url_rel_course_model->insertar($data); 
                }
            }
        }                            
        echo json_encode($resultado);
    }
	
    public function eliminar(){
        $codigo = $this->input->post('codigo');
        $filter = new stdClass();
        $filter->apertura = $codigo;
        $courses = $this->course_model->listar($filter);
        if(count($courses)>0){
            foreach($courses as $item => $value){
                $course_id = $value->id;
                $this->eliminardetalle($course_id);
            }
        }
        /*Elimino detalle*/
        $filter = new stdClass();
        $filter->apertura = $codigo;        
        $this->course_model->eliminar($filter);        
        /*Elimino cabecera*/
        $this->apertura_model->eliminar($filter);
        $resultado = true;
        echo json_encode($resultado);
    }

    public function eliminardetalle($course_id){
        $filter = new stdClass();
        $filter->course = $course_id;
        $data = $this->course_model->obtener($filter);
        $filter    = new stdClass();
        $filter->code   = $data->code;
        $filter->course = $data->id;
        /*Elimino course_rel_user*/
        $this->course_rel_user_model->eliminar($filter);
        /*Elimino c_course_setting*/
        $this->c_course_setting_model->eliminar($filter);
        /*Elimino c_document*/
        $this->c_document_model->eliminar($filter);
        /*Elimino access_url_rel_course*/     
        $this->access_url_rel_course_model->eliminar($filter);        
        /*Elimino course*/     
        $this->course_model->eliminar($filter);
//        echo json_encode(true);
    }    
    
    
    public function ver($codigo){
        $filter           = new stdClass();
        $filter->orden    = $codigo;
        $ordenes          = $this->matricula_model->obtener($filter);
        $codproducto      = $ordenes->PROD_Codigo;
        $codcliente       = $ordenes->CLIP_Codigo;
        $filter           = new stdClass();
        $filter->cliente  = $codcliente; 
        $clientes         = $this->alumno_model->obtener($filter);
        $filter           = new stdClass();
        $filter->curso = $codproducto; 
        $productos        = $this->curso_model->obtener($filter);        
        $this->load->library("fpdf/pdf");
        $CI = & get_instance();
        $CI->pdf->FPDF('P');
        $CI->pdf->AliasNbPages();
        $CI->pdf->AddPage();
        $CI->pdf->SetTextColor(0,0,0);
        $CI->pdf->SetFillColor(216,216,216);
        $CI->pdf->SetFont('Arial','B',11);
        $CI->pdf->Image('img/puertosaber.jpg',10,8,10);
        $CI->pdf->Cell(0,13,"MATRICULA Nro ".$ordenes->ORDENC_Numero,0,1,"C",0);
         $CI->pdf->SetFont('Arial','B',7);
        $CI->pdf->Cell(120,10, "" ,0,1,"L",0);
        $CI->pdf->Cell(90,5, "CURSO : " ,1,0,"L",0);
        $CI->pdf->Cell(1,1, "" ,0,0,"L",0);
        $CI->pdf->Cell(90,5,$productos->PROD_Nombre,1,1,"L",0);
        $CI->pdf->Cell(90,1, "" ,0,1,"L",0);
        $CI->pdf->Cell(90,5, "APELLIDOS Y NOMBRES: " ,1,0,"L",0);
        $CI->pdf->Cell(1,1, "" ,0,0,"L",0);
        $CI->pdf->Cell(90,5,$clientes->PERSC_ApellidoPaterno." ".$clientes->PERSC_ApellidoMaterno.", ".$clientes->PERSC_Nombre,1,1,"L",0); 
        $CI->pdf->Cell(90,1, "" ,0,1,"L",0);
        $CI->pdf->Cell(90,5, "USUARIO: " ,1,0,"L",0);
        $CI->pdf->Cell(1,1, "" ,0,0,"L",0);
        $CI->pdf->Cell(90,5,$ordenes->ORDENC_Usuario ,1,1,"L",0);
         $CI->pdf->Cell(90,1, "" ,0,1,"L",0);
        $CI->pdf->Cell(90,5, "CLAVE: " ,1,0,"L",0);
        $CI->pdf->Cell(1,1,$ordenes->ORDENC_Password,0,0,"L",0);
        $CI->pdf->Cell(90,5, "" ,1,1,"L",0);
         $CI->pdf->Cell(90,1, "" ,0,1,"L",0);         
        $CI->pdf->Cell(90,5, "RESPONSABLE: " ,1,0,"L",0);
        $CI->pdf->Cell(1,1, "" ,0,0,"L",0);
        $CI->pdf->Cell(90,5, "" ,1,1,"L",0);   
         $CI->pdf->Cell(90,1, "" ,0,1,"L",0);
        $CI->pdf->SetTextColor(0,0,0);
        $CI->pdf->SetFillColor(255,255,255);
        $CI->pdf->Cell(181,5, "OBSERVACION : " ,0,1,"L",1);
        $CI->pdf->Cell(181,5,$ordenes->ORDENC_Observacion,1,1,"L",1);
        $CI->pdf->Output();
    }
    
    public function buscar($j=0){
        $ciclo = $this->input->post("ciclo");
        $filter     = new stdClass();
        $filter_not = new stdClass();
        $filter->ciclo = $ciclo;
        //$filter->order_by    = array("d.PERSC_ApellidoPaterno"=>"asc","d.PERSC_ApellidoMaterno"=>"asc","d.PERSC_Nombre"=>"asc");
        $registros = count($this->apertura_model->listar($filter,$filter_not));
        $apertura  = $this->apertura_model->listar($filter,$filter_not,$this->configuracion['per_page'],$j);
        $item      = 1;
        $lista     = array();
        if(count($apertura)>0){
            foreach($apertura as $indice => $value){
                $lista[$indice]          = new stdClass();
                $lista[$indice]->codigo  = $value->APERTUP_Codigo;
                $lista[$indice]->tipoestudio  = $value->TIPC_Nombre;
                $lista[$indice]->local   = $value->LOCC_Nombre;
                $lista[$indice]->aula    = $value->AULAC_Nombre;
                $lista[$indice]->turno   = $value->TURNOC_Descripcion;
            }
        }
        $configuracion = $this->configuracion;
        $configuracion['base_url']    = base_url()."index.php/ventas/alumno/buscar";
        $configuracion['total_rows']  = $registros;
        $this->pagination->initialize($configuracion);
        /*Enviamos los datos a la vista*/
        $data['lista']      = $lista;
        $data['titulo']     = "Buscar aulas";
        $data['j']          = $j;
        $data['registros']  = $registros;
        $data['paginacion'] = $this->pagination->create_links();
        $this->load->view("ventas/apertura_buscar",$data);
    }    
    
    public function obtener(){
        $obj    = $this->input->post('objeto');
        $filter = json_decode($obj);
        $apertura = $this->apertura_model->obtener($filter);
        $resultado = json_encode($apertura);       
        echo $resultado; 
    }
    
    public function obtenerdetalle(){
        $obj    = $this->input->post('objeto');
        $filter = json_decode($obj);
        $courses  = $this->course_model->obtener($filter);
        $resultado = json_encode($courses);       
        echo $resultado;        
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