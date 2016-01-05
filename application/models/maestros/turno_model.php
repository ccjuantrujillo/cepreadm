<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Turno_model extends CI_Model{
    var $table;
    
    public function __construct(){
        parent::__construct();
        $this->table     = "ant_turno";
    }
	
    public function seleccionar($default="",$filter="",$filter_not='',$number_items='',$offset=''){
        if($default!="") $arreglo = array($default=>':: Seleccione ::');
        foreach($this->listar($filter,$filter_not,$number_items,$offset) as $indice=>$valor)
        {
            $indice1   = $valor->TURNOP_Codigo;
            $valor1    = $valor->TURNOC_Descripcion;
            $arreglo[$indice1] = $valor1;
        }
        return $arreglo;
    }
	
    public function listar($filter="",$filter_not='',$number_items='',$offset=''){
        $this->db->select('*');
        $this->db->from($this->table." as c",$number_items,$offset); 
        if(isset($filter->turno) && $filter->turno!='')   $this->db->where(array("c.TURNOP_Codigo"=>$filter->turno));  
        if(isset($filter->estado) && $filter->estado!='') $this->db->where(array("c.TURNOC_Estado"=>$filter->estado ));  
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
       echo $this->db->last_query();
       return $this->db->insert_id();
    }
	
    public function modificar($id,$filter){
        $this->db->where("TURNOP_Codigo",$id);
        $this->db->update($this->table,(array)$filter);
    }
	
    public function eliminar($codigo){
        $this->db->delete($this->table,array('TURNOP_Codigo' => $codigo));
    }
}
?>