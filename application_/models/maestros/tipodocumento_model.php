<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tipodocumento_model extends CI_Model{
    var $table; 
    public function __construct(){
	parent::__construct();
        $this->table   = "ant_tipodocumento";
    }
    
    public function seleccionar($default='',$filter='',$filter_not='',$number_items='',$offset=''){
        if($default!="") $arreglo = array($default=>':: Seleccione ::');
       foreach($this->listar($filter,$filter_not,$number_items,$offset) as $indice=>$valor){
            $arreglo[$valor->TIPDOCP_Codigo] = $valor->TIPOCC_Inciales;
       }
       return $arreglo;
    }
    
    public function listar($filter,$filter_not='',$number_items='',$offset=''){
        $this->db->select('*');
        $this->db->from($this->table,$number_items,$offset);
        if(isset($filter->estado) && $filter->estado!='')    $this->db->where(array("TIPOCC_FlagEstado"=>$filter->estado));
        if(isset($filter->order_by) && is_array($filter->order_by)){
            foreach($filter->order_by as $indice=>$value) $this->db->order_by($indice,$value);
        }  
        $query = $this->db->get();
        $resultado = array();
        if($query->num_rows>0){
            $resultado = $query->result();
        }
        return $resultado;
    }
    
    public function obtener($filter,$filter_not=''){
        $listado = $this->listar($filter,$filter_not='',$number_items='',$offset='');
        if(count($listado)>1)
            $resultado = "Existe mas de un resultado";
        else
            $resultado = (object)$listado;
        return $resultado;	
    }
}
?>