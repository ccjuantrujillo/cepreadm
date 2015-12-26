<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>  
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />   
    <meta http-equiv="Content-Language" content="es"> 
    <title><?php echo titulo;?></title>          
</head>
<body>
<div class="contenido">
    <div class="contenidotabla">
        <h1><?php echo $titulo;?></h1>
        <?php echo $form_open;?>
        <table style="background-color: #f4f7ff">
          <tr>
            <td width="10%" bgcolor="#d5e2f2">Nro.Matricula:</td>
            <td class="formss" width="40%"><input name="matricula" id="matricula" type="text" value="<?php echo $lista->matricula;?>" readonly="readonly" class="cajaMinima" style="background-color: #E6E6E6"/></td>
            <td bgcolor="#d5e2f2">Fecha:</td>
            <td class="formss">
                <input name="fecha" id="fecha" type="text" value="<?php echo $lista->fecha;?>" readonly="readonly" class="cajaMinima"/>
            </td>                        
          </tr>  
          <tr>
            <td width="20%" bgcolor="#d5e2f2">Ciclo:</td>
            <td class="formss" width="30%"><?php echo $selciclo;?></td>
            <td width="20%" bgcolor="#d5e2f2">Tipo de estudio:</td>
            <td class="formss" width="30%"><?php echo $seltipoestudiociclo;?></td>                
          </tr>
          <tr>
            <td width="20%" bgcolor="#d5e2f2">Local:</td>
            <td class="formss" width="30%"><?php echo $sellocal;?></td>              
            <td bgcolor="#d5e2f2">Aula:</td>
            <td class="formss" width="30%"><?php echo $selaula;?></td> 
          </tr>                     
          <tr>
            <td bgcolor="#d5e2f2">Alumno:</td>
            <td class="formss">
                <input name="user_id" id="user_id" type="text" value="<?php echo $lista->user_id;?>" readonly="readonly" class="cajaMinima" style="background-color: #E6E6E6"/>
                <input name="nombres" id="nombres" type="text" value="<?php echo $lista->apellidos.' '.$lista->nombres;?>" class="cajaGrande" readonly="readonly" style="background-color: #E6E6E6"/>
                <?php if($accion=='n'):;?>
                    <input id="ver_cliente" name="ver_cliente" type="button" class="aceptarlog2" alt="Buscar alumno" title="Buscar alumno" value="Buscar" />
                <?php endif;?>
            </td>
            <td bgcolor="#d5e2f2">Estado:</td>
            <td class="formss"><?php echo $selestado;?></td>               
          </tr>                            
        </table>
        <?php echo $oculto;?>
        <?php echo $form_close;?>
    </div>
    <div class="frmboton">
        <div class="frmboton_matricula">
            <input class="botones" id="cancelar" type="button" alt="Cancelar" title="Cancelar" value="Cancelar"/>   
            <input class="botones" id="imprimir" type="button" value="Imprimir" alt="Imprimir" title="Imprimir"/>              
            <input class="botones" id="grabar" type="button" alt="Aceptar" title="Aceptar" value="Aceptar"/>
        </div>
    </div>      
</div>    
</body>
</html>
