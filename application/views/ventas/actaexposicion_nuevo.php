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
        <ul>
            <li>
                <label>Archivo:</label>
                <input id="fileupload" type="file" name="files[]" multiple value="hola">
            </li>
            <li>
                <label>Profesor:</label>
                <input id="fileupload" type="file" name="files[]" multiple value="hola">
            </li>
            <li>
                <label>Titulo:</label>
                <input id="fileupload" type="text" name="tema" value="hola">
            </li>
            <li>
                <label>Descripcion:</label>
                <input id="fileupload" type="text" name="tema" value="hola">
            </li>
            <li>
                <input type="submit" value="Upload">
            </li>
        </ul>
    <?php echo $form_close;?>        
    <table width="100%" id="tabla_detalle">
        <tr>
            <th width="3%" align="center">No</th>
            <th width="10%" align="center">Nombre</th>
            <th width="50%" align="center">Descripcion</th>
            <th align="center">Acciones</th>
        </tr>
    </table>  
</div>
</body>
</html>