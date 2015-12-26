<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>  
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />   
    <meta http-equiv="Content-Language" content="es"> 
    <title><?php echo titulo;?></title>          
    <link rel="stylesheet" href="<?php echo css;?>estructura.css" type="text/css" />     
    <link rel="stylesheet" href="<?php echo css;?>menu.css" type="text/css" />    
    <link href="<?php echo css;?>jquery-ui.css" rel="stylesheet" type="text/css" />        
    <script type="text/javascript" src="<?php echo js;?>jquery.js"></script>  
    <script type="text/javascript" src="<?php echo js;?>jquery-ui.min.js"></script>    
    <script type="text/javascript" src="<?php echo js;?>jquery.simplemodal.js"></script>     
    <script type="text/javascript" src="<?php echo js;?>constants.js"></script>     
    <script type="text/javascript" src="<?php echo js;?>ventas/matricula.js"></script>	
</head>
<body>
<div class="contenido" > 
    <div class="header"><?php echo $header;?></div>
    <div class="menu"><ul id="nav"><?php echo $menu;?></ul></div>
    <div class="titulotabla">
        <input name="" type="button" class="aceptarlog2" alt="Aceptar" title="Aceptar" value="Crear un nueva matricula" id="nuevo"/>            
        <h1>Matricula de alumnos</h1>
    </div>
    <div class="mensaje">Se han encontrado (<?php echo $registros;?>) registros(s)</div>
    <div class="tabla">
        <table>
          <tr class="list1">
            <td width="43">No</td>
                                <td width="193">Ciclo</td>
            <td width="43">Tipo</td>
            <td width="43">Aula</td>
            <td width="193">Apellidos y Nombres</td>
            <td width="86">Fecha matricula</td>
            <td width="63">Estado</td>
            <td width="50">Ver</td>
            <td width="50">Editar</td>
            <td width="50">Eliminar</td>
          </tr>
          <?php
          if(count($lista)>0){
            foreach($lista as $item => $value){
                $flgestado = $value->estado;
                $estado = $flgestado==1?"Activo":"Inactivo";
                $clase = ($item%2)==0?"list_a":"list_b";
               ?>
              <tr class="<?php echo $clase;?>">
                <td><?php echo ++$j;?></td>
                <td align="center"><?php echo $value->ciclo;?></td>
                <td align="center"><?php echo $value->tipoestudio;?></td>
                <td align="center"><?php echo $value->aula;?></td>
                <td align="left"><?php echo $value->paterno." ".$value->materno." ".$value->nombres;?></td>
                <td align="center"><?php echo $value->fecha;?></td>
                <td align="center"><img src="<?php echo img.($flgestado==1?"check.jpg":"uncheck.jpg");?>" height="20px" width="20px"/><?php echo $estado;?></td>
                <td><a href="#" onclick='ver("<?php echo $value->codigo;?>")'><img src="<?php echo img;?>ver.png"/></a></td>                        
                <td><a href="#" onclick='editar("<?php echo $value->codigo;?>")'><img src="<?php echo img;?>editar.jpg"/></a></td>
                <td><a href="#" onclick='eliminar("<?php echo $value->codigo;?>")'><img src="<?php echo img;?>eliminar.jpg"/></a></td>
              </tr>  
               <?php 
            }
          }
          else{
              ?>
            <tr class="list_a"><td colspan='10'>::NO EXISTEN REGISTROS::</td></tr>
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
