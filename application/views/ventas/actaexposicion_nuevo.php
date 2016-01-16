<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>  
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />   
    <meta http-equiv="Content-Language" content="es"> 
    <title><?php echo titulo;?></title>          
    <link rel="stylesheet" href="<?php echo css;?>estructura.css"/>
    <link rel="stylesheet" href="<?php echo css;?>bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo css;?>style.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo css;?>jquery.fileupload.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo css;?>jquery.fileupload-ui.css" type="text/css"/>
    <script type="text/javascript" src="<?php echo js;?>jquery.js"></script>   
    <script type="text/javascript" src="<?php echo js;?>jquery.simplemodal.js"></script>      
    <script type="text/javascript" src="<?php echo js;?>constants.js"></script>     
    <script type="text/javascript" src="<?php echo js;?>ventas/actaexposicion.js"></script>  
    <script type="text/javascript" src="<?php echo js;?>load-image.all.min.js"></script>
    <script type="text/javascript" src="<?php echo js;?>canvas-to-blob.min.js"></script>
    <script type="text/javascript" src="<?php echo js;?>bootstrap.min.js"></script>
    <script type="text/javascript" src="<?php echo js;?>vendor/jquery.ui.widget.js"></script>
    <script type="text/javascript" src="<?php echo js;?>jquery/jquery.iframe-transport.js"></script>
    <script type="text/javascript" src="<?php echo js;?>jquery/jquery.fileupload.js"></script>
    <script type="text/javascript" src="<?php echo js;?>jquery/jquery.fileupload-process.js"></script>
    <script type="text/javascript" src="<?php echo js;?>jquery/jquery.fileupload-image.js"></script>
    <script type="text/javascript" src="<?php echo js;?>jquery/jquery.fileupload-audio.js"></script>
    <script type="text/javascript" src="<?php echo js;?>jquery/jquery.fileupload-video.js"></script>
    <script type="text/javascript" src="<?php echo js;?>jquery/jquery.fileupload-validate.js"></script>  
    <script type="text/javascript" src="<?php echo js;?>ventas/actaexposicion.js"></script>
</head>
<body>
<div class="contenido">  
    <span class="btn btn-success fileinput-button">
        <i class="glyphicon glyphicon-plus"></i>
        <span>Add files...</span>
        <input id="fileupload" type="file" name="files[]" multiple value="hola">
    </span>
    <br>
    <br>
    <div id="progress" class="progress">
        <div class="progress-bar progress-bar-success"></div>
    </div>
    <div id="files" class="files"></div>  
</div>	
</body>
</html>