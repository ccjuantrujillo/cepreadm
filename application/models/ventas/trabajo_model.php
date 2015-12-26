<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Trabajo_model extends CI_Model{
    var $table;
    
    public function __construct(){
        parent::__construct();
        $this->table   = "ant_trabajo";
        $this->table_emp   = "ant_empresa";
    }
	
    public function seleccionar($default="",$filter="",$filter_not='',$number_items='',$offset=''){
        if($default!="") $arreglo = array($default=>':: Seleccione ::');
        foreach($this->listar($filter,$filter_not,$number_items,$offset) as $indice=>$valor)
        {
            $indice1   = $valor->TRABAJP_Codigo;
            $valor1    = $valor->TRABAJC_Descripcion;
            $arreglo[$indice1] = $valor1;
        }
        return $arreglo;
    }
	
    public function listar($filter="",$filter_not='',$number_items='',$offset=''){
        $this->db->select('*');
        $this->db->from($this->table." as c",$number_items,$offset);  
        $this->db->join($this->table_emp.' as d','d.EMPRP_Codigo=c.EMPRP_Codigo','inner');
        if(isset($filter->profesor))  $this->db->where(array("c.PROP_Codigo"=>$filter->profesor));  
        if(isset($filter->trabajo))   $this->db->where(array("c.TRABAJP_Codigo"=>$filter->trabajo));  
        if(isset($filter->empresa))   $this->db->where(array("c.EMPRP_Codigo"=>$filter->empresa));  
        $query = $this->db->get();
        $resultado = array();
        if($query->num_rows>0){
            $resultado = $query->result();
        }
        return $resultado;
    }
	
    public function obtener($filter,$filter_not='',$number_items='',$offset=''){
        $listado = $this->listar($filter,$filter_not='',$number_items='',$offset='');
        if(count($listado)>1)
            $resultado = "Existe mas de un resultado";
        else
            $resultado = isset($listado[0])?(object)$listado[0]:"";
        return $resultado;
    }
	
    public function insertar($data){
       $this->db->insert($this->table,$data);
       return $this->db->insert_id();
    }
	
    public function modificar($id,$filter){
        $this->db->where("TRABAJP_Codigo",$id);
        $this->db->update($this->table,(array)$filter);
    }
	
    public function eliminar($filter){
        if(isset($filter->trabajo) && $filter->trabajo!='')  $this->db->where(array("TRABAJP_Codigo"=>$filter->trabajo));        
        $this->db->delete($this->table); 
    }
}
?>