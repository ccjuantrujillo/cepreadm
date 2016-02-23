<?php header("Content-type: text/html; charset=utf-8"); 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once APPPATH.'libraries/UploadHandler.php';
class Actaexposicion extends CI_Controller {
    public function __construct(){
        parent::__construct(); 
        if(!isset($_SESSION['login'])) die("Sesion terminada. <a href='".  base_url()."'>Registrarse e ingresar.</a> ");           
        $this->load->model(ventas.'acta_model');
        $this->load->model(ventas.'actadetalle_model');
        $this->load->model(ventas.'profesor_model');
        $this->load->model(ventas.'actaprofesor_model');
        $this->load->model(ventas.'actaexposicion_model');
        $this->load->model(almacen.'tema_model');
        $this->load->helper('menu');
        $this->configuracion = $this->config->item('conf_pagina');
        $this->login   = $this->session->userdata('login');
    } 
    
    public function editar($acta=0,$curso=0){
        $filter     = new stdClass();
        $filter->acta  = $acta;
        $filter->order_by    = array("f.PERSC_ApellidoPaterno"=>"asc","f.PERSC_ApellidoMaterno"=>"asc","f.PERSC_Nombre"=>"asc");
        $actaexposiciones = $this->actaexposicion_model->listar($filter);
        $item       = 1;
        $lista      = array();
        if(count($actaexposiciones)>0){
            foreach($actaexposiciones as $indice => $value){
                $lista[$indice]             = new stdClass();
                $lista[$indice]->codigo   = $value->ACTAEXPOSP_Codigo;
                $lista[$indice]->profesor = $value->PERSC_ApellidoPaterno." ".$value->PERSC_ApellidoMaterno." ".$value->PERSC_Nombre;
                $lista[$indice]->curso    = $value->PROD_Nombre;
                $lista[$indice]->tema         = $value->TEMAC_Descripcion;
                $lista[$indice]->descripcion  = $value->ACTAEXPOSC_Descripcion;
                $lista[$indice]->duracion  = $value->ACTAEXPOSC_Duracion;
            }
        }
        /*Cargo el formulario*/
        
        $data['titulo']         = "Asistencia de profesores"; 
        $data['form_open']      = form_open(base_url()."index.php/ventas/actaexposicion/grabar",array("name"=>"frmPersona","id"=>"frmPersona","enctype"=>"multipart/form-data"));     
        $data['form_profesor']    = form_input(array("name"=>"profesor","id"=>"profesor","value"=>"","class"=>"cajaMedia"));
        $filter = new stdClass();
        $filter->curso = $curso;
        $filter->order_by = array("d.PERSC_ApellidoPaterno"=>"asc","d.PERSC_ApellidoMaterno"=>"asc","d.PERSC_Nombre"=>"asc");
        $data['form_profesor']      = form_dropdown('profesor',$this->profesor_model->seleccionar("0",$filter),"","id='profesor' class='comboMedio'");        
        $filter = new stdClass();
        $filter->curso = $curso;
        $filter->order_by = array("c.TEMAC_Descripcion"=>"asc");
        $data['form_tema']        = form_dropdown('tema',$this->tema_model->seleccionar("0",$filter),"","id='tema' class='comboMedio'");        
        $data['form_descripcion'] = form_input(array("name"=>"descripcion","id"=>"descripcion","value"=>"","class"=>"cajaMedia"));
        $data['form_duracion'] = form_input(array("name"=>"duracion","id"=>"duracion","value"=>"","class"=>"cajaMinima","type"=>"time"));
        $data['form_close']    = form_close(); 
        $data['lista']         = $lista;
        $data['oculto']        = form_hidden(array("curso"=>$curso,"acta"=>$acta));
        $this->load->view("ventas/actaexposicion_nuevo",$data);
    } 
    
    public function upload(){
        $upload_handler = new UploadHandler();
    }
    
    public function grabar(){
        $codigo      = $this->input->get_post('codigo');
        $curso       = $this->input->get_post('curso');
        $acta        = $this->input->get_post('acta');
        $profesor    = $this->input->get_post('profesor');
        $tema        = $this->input->get_post('tema');
        $descripcion = $this->input->get_post('descripcion');
        $duracion    = $this->input->get_post('duracion');
        if($curso!="" && $profesor!=""){
            $resultado = false;
            $data   = array(
                            "ACTAP_Codigo"            => $acta,
                            "PROP_Codigo"             => $profesor,
                            "PRODATRIBDET_Codigo"     => $tema,
                            "ACTAEXPOSC_Archivo"      => "",
                            "ACTAEXPOSC_Descripcion"  => $descripcion,
                            "ACTAEXPOSC_Duracion"     => $duracion
                           );
            if($codigo==""){//Nuevo
                $this->actaexposicion_model->insertar($data);    
                $resultado = true;
            }
            else{//Editar
                unset($data['ACTAP_Codigo']);
                $this->actapexposicion_model->modificar($codigo[$item],$data);                                
                $resultado = true; 
            }
            //echo json_encode($resultado);
            if($resultado){
                echo "<script>alert('Operacion realizada con exito')</script>";
                redirect('ventas/actaexposicion/editar/'.$acta.'/'.$curso);
            }
        }
    }
}
?>