<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>  
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />   
    <meta http-equiv="Content-Language" content="es"> 
    <title><?php echo titulo;?></title>          
    <link rel="stylesheet" href="<?php echo css;?>estructura.css"/>
    <link rel="stylesheet" href="<?php echo css;?>style.css" type="text/css"/>
    <script type="text/javascript" src="<?php echo js;?>jquery.js"></script>   
    <script type="text/javascript" src="<?php echo js;?>jquery.simplemodal.js"></script>      
    <script type="text/javascript" src="<?php echo js;?>constants.js"></script>     
    <script type="text/javascript" src="<?php echo js;?>ventas/actaexposicion.js"></script>  
</head>
<body>
<div class="contenido"> 
    <?php echo $form_open;?>
        <ul id="frm_exposicion">
            <li>
                <label>Archivo:</label>
                <input id="fileupload" type="file" name="files[]" multiple value="hola">
            </li>
            <li>
                <label>Profesor:</label>
                <?php echo $form_profesor;?>
            </li>
            <li>
                <label>Tema:</label>
                <?php echo $form_tema;?>
            </li>
            <li>
                <label>Descripcion:</label>
                <?php echo $form_descripcion;?>
            </li>
            <li>
                <label>Duracion:</label>
                <?php echo $form_duracion;?>
            </li>            
            <li>
                <input type="submit" value="Subir">
            </li>
        </ul>
        <?php echo $oculto;?>      
    <?php echo $form_close;?>        
    <table width="100%" id="tabla_detalle">
        <tr>
            <th width="3%" align="center">No</th>
            <th width="30%" align="center">Tema</th>
            <th width="20%" align="center">Descripcion</th>
            <th width="10%" align="center">Duracion</th>
            <th width="20%" align="center">Profesor</th>
            <th align="center">Acciones</th>
        </tr>
        <?php
        if(count($lista)==0){
            ?>
            <tr>
                <td colspan="5" align="center">::: No existen registros :::</td>
            </tr>
            <?php
        }
        else{
            foreach($lista as $indice => $value){
                ?>
                <tr>
                    <td align="center"><?php echo $indice+1;?></td>
                    <td align="left"><?php echo $value->tema;?></td>
                    <td align="left"><?php echo $value->descripcion;?></td>
                    <td align="center"><?php echo $value->duracion;?></td>
                    <td align="center"><?php echo $value->profesor;?></td>
                    <td align="center">Editar&nbsp;&nbsp;Eliminar</th>
                </tr>
                <?php
            }
        }
        ?>
    </table>      
</div>
</body>
</html>