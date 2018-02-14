<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Usuario_model extends CI_Model{
    var $table;
    public function __construct()
    {
        parent::__construct();
        $this->table     = "ant_usuario";
        $this->table_cab = "ant_persona";
        $this->table_rol = "ant_rol";
        $this->table_profesor = "ant_profesor";
    }

    public function ingresar($user,$clave)
    {
        $where = array("u.USUA_usuario"=>$user,"u.USUA_Password"=>$clave);
        $this->db->select('*');
        $this->db->from($this->table." as u");
        $this->db->join($this->table_cab.' as p','p.PERSP_Codigo=u.PERSP_Codigo','inner');  
        $this->db->join($this->table_rol.' as r','r.ROL_Codigo=u.ROL_Codigo','inner');
        $this->db->where($where);
        $query = $this->db->get();
        $resultado = new stdClass();
        //if($query->num_rows>1) exit('Existe . mas de 1 resultado');
        //if($query->num_rows==1){
            $resultado = $query->row();
        //}
        return $resultado; 
    }

    public function seleccionar($default='',$filter='',$filter_not='',$number_items='',$offset=''){
        if($default!="") $arreglo = array($default=>':: Seleccione ::');
        foreach($this->listar($filter,$filter_not,$number_items,$offset) as $indice=>$valor)
        {
            $indice1   = $valor->USUA_Codigo;
            $valor1    = $valor->PERSC_ApellidoPaterno." ".$valor->PERSC_ApellidoMaterno." ".$valor->PERSC_Nombre;
            $arreglo[$indice1] = $valor1;
        }
        return $arreglo;
    }

    public function listar($filter='',$filter_not='',$number_items='',$offset=''){
        $this->db->select('*');
        $this->db->from($this->table." as c");
        $this->db->join($this->table_cab.' as d','d.PERSP_Codigo=c.PERSP_Codigo','inner');
        $this->db->join($this->table_rol.' as e','e.ROL_Codigo=c.ROL_Codigo','inner');
        if(isset($filter->usuario))            $this->db->where(array("c.USUA_Codigo"=>$filter->usuario));  
        if(isset($filter->persona))            $this->db->where(array("c.PERSP_Codigo"=>$filter->persona));  
        if(isset($filter->rol))                $this->db->where(array("c.ROL_Codigo"=>$filter->rol));  
        if(isset($filter_not->persona) && $filter_not->persona!=''){
            if(is_array($filter_not->persona) && count($filter_not->persona)>0){
                $this->db->where_not_in('c.PERSP_Codigo',$filter_not->persona);
            }
            else{
                $this->db->where('c.PERSP_Codigo !=',$filter_not->persona);
            }            
        }            
        if(isset($filter->order_by) && count($filter->order_by)>0){
            foreach($filter->order_by as $indice=>$value){
                $this->db->order_by($indice,$value);
            }
        }           
        $this->db->limit($number_items, $offset);         
        $query = $this->db->get();
        $resultado = array();
        //if($query->num_rows > 0){
            $resultado = $query->result();
        //}
        return $resultado; 
    }

    public function listar_usuarioprofesor($filter='',$filter_not='',$number_items='',$offset=''){
        $this->db->select('*');
        $this->db->from($this->table." as c");
        $this->db->join($this->table_cab.' as d','d.PERSP_Codigo=c.PERSP_Codigo','inner');
        $this->db->join($this->table_rol.' as e','e.ROL_Codigo=c.ROL_Codigo','inner');
        $this->db->join($this->table_profesor.' as f','f.PERSP_Codigo=d.PERSP_Codigo','inner');
        if(isset($filter->usuario) && $filter->usuario!='')            $this->db->where(array("c.USUA_Codigo"=>$filter->usuario));  
        if(isset($filter->persona) && $filter->persona!='')            $this->db->where(array("c.PERSP_Codigo"=>$filter->persona));  
        if(isset($filter->profesor) && $filter->profesor!='')          $this->db->where(array("f.PROP_Codigo"=>$filter->profesor));  
        if(isset($filter->curso) && $filter->curso!='')                $this->db->where(array("f.PROD_Codigo"=>$filter->curso));  
        if(isset($filter->rol) && $filter->rol!='')                    $this->db->where(array("c.ROL_Codigo"=>$filter->rol));  
        if(isset($filter_not->persona) && $filter_not->persona!=''){
            if(is_array($filter_not->persona) && count($filter_not->persona)>0){
                $this->db->where_not_in('c.PERSP_Codigo',$filter_not->persona);
            }
            else{
                $this->db->where('c.PERSP_Codigo !=',$filter_not->persona);
            }            
        }            
        if(isset($filter->order_by) && count($filter->order_by)>0){
            foreach($filter->order_by as $indice=>$value){
                $this->db->order_by($indice,$value);
            }
        }           
        $this->db->limit($number_items, $offset);         
        $query = $this->db->get();
        $resultado = array();
        if($query->num_rows > 0){
            $resultado = $query->result();
        }
        return $resultado; 
    }    
    
    public function obtener($filter,$filter_not='',$number_items='',$offset=''){
        $listado = $this->listar($filter,$filter_not='',$number_items='',$offset='');
        if(count($listado)>1)
            $resultado = "Existe mas de un resultado";
        else
            $resultado = (object)$listado[0];
        return $resultado;
    }

    public function insertar($data){
       $this->db->insert($this->table,$data);
       return $this->db->insert_id();    
    }

    public function modificar($codigo,$data){
        $this->db->where("USUA_Codigo",$codigo);
        $this->db->update($this->table,$data);
    }

    public function eliminar($codigo){
        $this->db->delete($this->table,array('USUA_Codigo' => $codigo));     
    }
}
?>