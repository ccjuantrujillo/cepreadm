<?php header("Content-type: text/html; charset=utf-8");
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once APPPATH.'controllers/maestros/persona.php';
class Alumno extends Persona
{
    public function __construct(){
        parent::__construct();
        $this->load->model(ventas.'matricula_model');
        $this->load->model(chamilo.'user_model');
        $this->load->helper('menu');
        $this->configuracion = $this->config->item('conf_pagina');
    }

    public function index(){
        $this->load->view('seguridad/inicio');
    }

    public function listar($j=0){
        $filter           = new stdClass();
        $filter->rol      = $this->session->userdata('rolusu');
        $filter->order_by = array("m.MENU_Orden"=>"asc");
        $menu       = get_menu($filter);  
        $filter     = new stdClass();
        $filter_not = new stdClass();
        $filter->status = 5;
        $filter->order_by    = array("a.lastname"=>"asc","a.firstname"=>"asc");
        $registros = count($this->user_model->listar($filter,$filter_not));
        $clientes  = $this->user_model->listar($filter,$filter_not,$this->configuracion['per_page'],$j);
        $item      = 1;
        $lista     = array();
        if(count($clientes)>0){
            foreach($clientes as $indice => $value){
                $arrFecha = explode(" ",$value->registration_date);
                $lista[$indice]             = new stdClass();
                $lista[$indice]->nombres   = $value->firstname;
                $lista[$indice]->apellidos = $value->lastname;
                $lista[$indice]->email     = $value->email;
                $lista[$indice]->codigo    = $value->user_id;
                $lista[$indice]->estado    = $value->active;
                $lista[$indice]->fechareg  = $arrFecha[0];
            }
        }
        $configuracion = $this->configuracion;
        $configuracion['base_url']    = base_url()."index.php/ventas/alumno/listar";
        $configuracion['total_rows']  = $registros;
        $this->pagination->initialize($configuracion);
        /*Enviamos los datos a la vista*/
        $data['lista']           = $lista;
        $data['menu']            = $menu;
        $data['header']          = get_header();
        $data['j']               = $j;
        $data['registros']       = $registros;
        $data['paginacion']      = $this->pagination->create_links();
        $this->load->view("ventas/alumno_index",$data);
    }

    public function editar($accion,$codigo=""){
         $lista = new stdClass();
         if($accion == "e"){
             $filter            = new stdClass();
             $filter->user_id = $codigo;
             $alumnos            = $this->user_model->obtener($filter);
             $lista->dni         = $alumnos->ant_dni;
             $lista->direccion   = $alumnos->ant_direccion;
             $lista->telefono    = $alumnos->phone;
             $lista->email       = $alumnos->email;
             $lista->fnacimiento = date_sql($alumnos->ant_nacimiento);
             $lista->apellidos   = $alumnos->lastname;
             $lista->nombres     = $alumnos->firstname;
             $lista->estado      = $alumnos->active;
             $lista->codigo      = $alumnos->user_id;
         }
         elseif($accion == "n"){
             $lista->dni         = "";
             $lista->direccion   = "";
             $lista->telefono    = "";
             $lista->email       = "";
             $lista->fnacimiento = "";
             $lista->apellidos   = "";
             $lista->nombres     = "";
             $lista->estado      = 1;
             $lista->codigo      = "";
         }
         $arrEstado          = array("0"=>"::Seleccione::","1"=>"ACTIVO","2"=>"INACTIVO");
         $data['titulo']     = $accion=="e"?"Editar Alumno":"Crear Alumno";
         $data['form_open']  = form_open('',array("name"=>"frmPersona","id"=>"frmPersona","onsubmit"=>"return valida_guiain();"));
         $data['form_close'] = form_close();
         $data['lista']	     = $lista;
         $data['selestado']  = form_dropdown('estado',$arrEstado,$lista->estado,"id='estado' class='comboMedio'");
         $data['oculto']     = form_hidden(array("accion"=>$accion,"codigo"=>$lista->codigo));
         $this->load->view("ventas/alumno_nuevo",$data);
     }

    public function grabar(){
        $accion  = $this->input->get_post('accion');
        $codigo  = $this->input->get_post('codigo');
        $nombres = $this->input->post('nombres');
        $resultado = true;
        $arrApellidos = explode(" ",$this->input->get_post('apellidos'));
        $username  = substr($nombres, 0,3).$arrApellidos[0];
        $data   = array(
                        "ant_dni"        => $this->input->post('dni'),
                        "lastname"       => $this->input->post('apellidos'),
                        "firstname"      => $this->input->post('nombres'),
                        "username"       => $username,
                        "email"          => $this->input->post('email'),
                        "phone"          => $this->input->post('telefono'),
                        "ant_direccion"  => $this->input->post('direccion'),
                        "ant_nacimiento" => date_sql_ret($this->input->post('fnacimiento')),
                        "active"         => $this->input->post('estado')
                       );
        if($accion == "n"){
            $this->user_model->insertar($data);
        }
        elseif($accion == "e"){
            $this->user_model->modificar($codigo,$data);
        }
        echo json_encode($resultado);
    }

    public function eliminar(){
        $resultado = true;
        $codigo    = $this->input->post('codigo');
        $this->user_model->eliminar($codigo);
        echo json_encode($resultado);
    }

    public function buscar($j=0){
        $filter     = new stdClass();
        $filter_not = new stdClass();
        $filter->status = 5;
        //$filter->order_by    = array("d.PERSC_ApellidoPaterno"=>"asc","d.PERSC_ApellidoMaterno"=>"asc","d.PERSC_Nombre"=>"asc");
        $registros = count($this->user_model->listar($filter,$filter_not));
        $alumnos  = $this->user_model->listar($filter,$filter_not,$this->configuracion['per_page'],$j);
        $item      = 1;
        $lista     = array();
        if(count($alumnos)>0){
            foreach($alumnos as $indice => $value){
                $arrFecha = explode(" ",$value->registration_date);
                $lista[$indice]             = new stdClass();
                $lista[$indice]->numero   = $value->ant_dni;
                $lista[$indice]->nombres  = $value->firstname;
                $lista[$indice]->paterno  = $value->lastname;
                $lista[$indice]->materno  = $value->lastname;
                $lista[$indice]->telefono = $value->phone;
                $lista[$indice]->movil    = "";
                $lista[$indice]->codigo   = $value->user_id;
                $lista[$indice]->estado   = $value->status;
                $lista[$indice]->fechareg = $arrFecha[0];
            }
        }
        $configuracion = $this->configuracion;
        $configuracion['base_url']    = base_url()."index.php/ventas/alumno/buscar";
        $configuracion['total_rows']  = $registros;
        $this->pagination->initialize($configuracion);
        /*Enviamos los datos a la vista*/
        $data['lista']           = $lista;
        $data['j']               = $j;
        $data['registros']       = $registros;
        $data['paginacion']      = $this->pagination->create_links();
        $this->load->view("ventas/alumno_buscar",$data);
    }

    public function obtener($codigo){
        $filter    = new stdClass();
        $filter->user_id = $codigo;
        $clientes  = $this->user_model->obtener($filter);
        $resultado = json_encode($clientes);
        echo $resultado;
    }
}
?>