<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>  
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />   
    <meta http-equiv="Content-Language" content="es"> 
    <title><?php echo titulo;?></title>          
    <link rel="stylesheet" href="<?php echo css;?>estructura.css" type="text/css" />     
    <link rel="stylesheet" href="<?php echo css;?>menu.css" type="text/css" />     
    <script type="text/javascript" src="<?php echo js;?>jquery.js"></script>   
    <script type="text/javascript" src="<?php echo js;?>jquery-ui.min.js"></script>    
    <script type="text/javascript" src="<?php echo js;?>jquery.simplemodal.js"></script>     
    <script type="text/javascript" src="<?php echo js;?>constants.js"></script>     
    <script type="text/javascript" src="<?php echo js;?>ventas/modulo.js"></script>	
</head>
<body>
<div class="contenido" > 
    <div class="header"><?php echo $header;?></div>
    <div class="menu"><ul id="nav"><?php echo $menu;?></ul></div>
    <div class="titulo">
        <input name="" type="button" class="aceptarlog2" alt="Aceptar" title="Aceptar" value="<?php echo $nuevo;?>" id="nuevo"/>            
        <h1><?php echo $titulo;?></h1>
    </div>
    <div class="mensaje">Se han encontrado (<?php echo $registros;?>) registros(s)</div>
    <div class="tabla">
        <table>
           <tr class="list1">
             <td width="43">No</td>
             <td width="43">Codigo</td>
             <td width="100">Turno</td>
             <td width="100">Modulo</td>                 
             <td width="50">Editar</td>
             <td width="50">Eliminar</td>
           </tr>
           <?php
           if(count($lista)>0){
             foreach($lista as $item => $value){
                 $clase = ($item%2)==0?"list_a":"list_b";
                ?>
               <tr class="<?php echo $clase;?>" id="<?php echo $value->codigo;?>">
                 <td><?php echo ++$j;?></td>
                 <td><?php echo $value->codigo;?></td>
                 <td><?php echo $value->turno;?></td>
                 <td><?php echo $value->modulo;?></td>
                 <td><a href="#" class="editar"><img src="<?php echo img;?>editar.jpg"/></a></td>
                 <td><a href="#" class="eliminar"><img src="<?php echo img;?>eliminar.jpg"/></a></td>
               </tr>  
                <?php 
             }
           }
           else{
               ?>
             <tr class="list_a"><td colspan='9'>::NO EXISTEN REGISTROS::</td></tr>
               <?php
           }
           ?>
         </table>        
    </div>
    <div class="mensaje"><?php echo $paginacion;?></div>
    <div class="footer"><h4><?php echo pie;?></h4></div>
</div>
 <div id="basic-modal-content"><div id="mensaje">&nbsp;</div></div>  
</body>
</html>
