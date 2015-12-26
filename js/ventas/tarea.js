jQuery(document).ready(function(){     
   $("body").on("click","#buscar",function(){
        $("#form_busqueda").submit();
    });
    
   $("body").on("click","#pdf",function(){
        url = base_url+"index.php/ventas/tarea/export_pdf/rpt_seguimiento_tareas";
        $("#frmReporte").attr("action",url);
        $("#frmReporte").attr("target","framereporte");
        $("#frmReporte").submit();
    });    
    
    $("body").on("click","#nuevo",function(){
        dataString = "";
        url = base_url+"index.php/ventas/tarea/editar/n";
        $.post(url,dataString,function(data){
            $('#basic-modal-content').modal();
            $('#mensaje').html(data);
        });          
    });
    
    $("body").on('click',"#agregar",function(){
        n      = $("#tabla_detalle tr").length - 1;
        if($('#curso').val()!=0){
            fila   = "<tr>";
            fila  += "<td align='center'><input type='hidden'  value='' id='codigodetalle["+n+"]' name='codigodetalle["+n+"]'>"+(parseInt(n)+1)+"</td>";
            fila  += "<td align='center'><select class='comboMedio' name='tipoestudiociclo["+n+"]' id='tipoestudiociclo["+n+"]' onchange='selectTema("+n+");'><option value='0'>::Seleccione::</option></select></td>";
            fila  += "<td align='center'><select class='comboGrande' name='tema["+n+"]' id='tema["+n+"]'><option value='0'>::Seleccione::</option></select></td>";
            fila  += "<td align='center'><select class='comboGrande' name='responsable["+n+"]' id='responsable["+n+"]'><option value='0'>::Seleccione::</option></select></td>";
            fila  += "<td align='center'><input type='text' class='cajaMinima' name='cantidad["+n+"]' id='cantidad["+n+"]' value=''></td>";
            fila  += "<td align='center'><input type='text' class='cajaMinima' name='fentrega["+n+"]' id='fentrega["+n+"]' value='__/__/__' onblur='getCalendario(this);'></td>";
            fila  += "<td align='center'><a href='#'>Editar</a>&nbsp;<a href='#' class='eliminardetalle'>Eliminar</a></td>";
            fila  += "</tr>";
            $("#tabla_detalle").append(fila);
            selectTipoestudiociclo(n);  
            selectTema(n);  
            selectResponsable(n);            
        }
        else{
            alert("Primero debe seleccinar un curso");
        }
    });           
   
     $("body").on('change',"#curso",function(){
        url    = base_url+"index.php/ventas/profesor/obtener/";
        objRes = new Object();
        objRes.curso = $("#curso").val();
        objRes.flgcoordinador = 1;
        dataString   = {objeto: JSON.stringify(objRes)};
        $("#profesor").children().remove().end().append("<option value='0'>:: Seleccione ::</option>");
       $.post(url,dataString,function(data){
            $.each(data, function(item,value){
               opt       = document.createElement('option');
               opt.value = value.PROP_Codigo;
               opt.appendChild(document.createTextNode(value.PERSC_ApellidoPaterno+' '+value.PERSC_ApellidoMaterno+' '+value.PERSC_Nombre));
               $('#profesor').append(opt);
           });
       },"json");             
   });    
    
     $("body").on('change',"#curso_rpt",function(){
        url    = base_url+"index.php/ventas/profesor/obtener/";
        objRes = new Object();
        objRes.curso = $("#curso_rpt").val();
        dataString   = {objeto: JSON.stringify(objRes)};
        $("#profesor").children().remove().end().append("<option value='0'>:: Seleccione ::</option>");
       $.post(url,dataString,function(data){
            $.each(data, function(item,value){
               opt       = document.createElement('option');
               opt.value = value.PROP_Codigo;
               opt.appendChild(document.createTextNode(value.PERSC_ApellidoPaterno+' '+value.PERSC_ApellidoMaterno+' '+value.PERSC_Nombre));
               $('#profesor').append(opt);
           });
       },"json");             
   });       
    
    $("body").on('click',"#imprimir",function(){
        codigo   = $("#codigo").val();
        url = base_url+"index.php/ventas/tarea/ver/"+codigo;
        window.open(url, this.target, 'width=800,height=400,top=150,left=200');
    });    
    
    $("body").on('click',".ver",function(){
        codigo = $(this).parent().parent().attr("id");
        url = base_url+"index.php/ventas/tarea/ver/"+codigo;
        window.open(url, this.target, 'width=800,height=400,top=150,left=200');
    });        
    
    $("body").on('click',"#cancelar",function(){
        url = base_url+"index.php/ventas/tarea/listar";
        location.href = url;
    });      
    
    $("body").on('click',"#grabar",function(){
        url        = base_url+"index.php/ventas/tarea/grabar";
        clave      = $("#clave").val();
        $('#profesor').removeAttr('disabled');
        $('#ciclo').removeAttr('disabled');
        $('#tipotarea').removeAttr('disabled');
        dataString = $('#frmPersona').serialize();
        if(clave != ""){
            $.post(url,dataString,function(data){
                if(data=="true"){
                    alert('Operacion realizada con exito');    
                    location.href = base_url+"index.php/ventas/tarea/listar";
                }
                else if(data=="false"){
                    alert('El usuario ya esta tareado en el curso');
                }
            });            
        }
        else{
            alert("Debe escribir una clave");
        }
    }); 
    
   $("body").on("click",".eliminardetalle",function(){
        if(confirm('Esta seguro desea eliminar este registro?')){
            coddetalle = $(this).parent().parent().attr("id");
            dataString = "codigo="+coddetalle;
            url = base_url+"index.php/ventas/tarea/eliminardetalle";
            $.post(url,dataString,function(data){
                if(data=="true"){
//                    alert('Operacion realizada con exito');  
                    accion      = $("#accion").val();
                    codigo      = $("#codigo").val();
                    dataString  = $('#frmPersona').serialize();
                    url = base_url+"index.php/ventas/tarea/editar/"+accion+"/"+codigo;
                    $.post(url,dataString,function(data2){
                        $('#mensaje').html(data2);
                    });                                          
                }
                else if(data=="false"){
                    alert("No se puede eliminar el registro,\nel usuario ha visualizado los videos");
                }
            });
        }        
    });    
    
    $("body").on("click",".editardetalle",function(){ 
    tr = $(this).parent().parent();  
    n  = tr.children("td")[0].innerHTML - 1;        
    codigodetalle = $(this).parent().parent().attr("id"); 
    url = base_url+"index.php/ventas/tarea/obtenerdetalle";
    objRes = new Object();
    objRes.tareadetalle = codigodetalle;
    dataString   = {objeto: JSON.stringify(objRes)}; 
    $.post(url,dataString,function(data){
        tr.empty();              
        tr.append("<td align='center'><input type='hidden' id='codigodetalle["+n+"]' name='codigodetalle["+n+"]' value='"+codigodetalle+"'>"+(parseInt(n)+1)+"</td>");
        tr.append("<td align='center'><select class='comboMedio' name='tipoestudiociclo["+n+"]' id='tipoestudiociclo["+n+"]' onchange='selectTema("+n+");'><option value='0'>::Seleccione::</option></select></td>");
        tr.append("<td align='center'><select class='comboGrande' name='tema["+n+"]' id='tema["+n+"]'><option value='0'>::Seleccione::</option></select></td>");
        tr.append("<td align='center'><select class='comboGrande' name='responsable["+n+"]' id='responsable["+n+"]'><option value='0'>::Seleccione::</option></select></td>");        
        tr.append("<td align='left'><input type='text' class='cajaMinima' name='cantidad["+n+"]' id='cantidad["+n+"]' value='"+data["TAREADETC_Cantidad"]+"'></td>");                
        tr.append("<td align='left'><input type='text' class='cajaMinima' name='fentrega["+n+"]' id='fentrega["+n+"]' value='"+data["fentrega"]+"' onblur='getCalendario(this);'></td>");                        
        tr.append("<td align='center'><a href='#' class='editardetalle'>Editar</a>&nbsp;<a href='#' class='eliminardetalle'>Eliminar</a></td>");
        selectTipoestudiociclo(n,data["TIPCICLOP_Codigo"]);  
        selectTema(n,data["TIPCICLOP_Codigo"],data["PRODATRIBDET_Codigo"]);  
        selectResponsable(n,data["PROP_Codigo"]);  
     },"json");              
     });    
    
    $("body").on("click",".eliminar",function(){
       if(confirm('Esta seguro desea eliminar este registro?')){
            coddetalle = $(this).parent().parent().attr("id");
            dataString = "codigo="+coddetalle;
            url = base_url+"index.php/ventas/tarea/eliminar";
            $.post(url,dataString,function(data){
                if(data=="true"){
                    //alert('Operacion realizada con exito');  
                    url = base_url+"index.php/ventas/tarea/listar";
                    location.href = url;
                }
                else if(data=="false"){
                    alert("No se puede eliminar el registro");
                }
            });           
       }        
    });           
    
   $("body").on("click",".editar",function(){
        codigo = $(this).parent().parent().attr("id");
        dataString = "";    
        url = base_url+"index.php/ventas/tarea/editar/e/"+codigo;
        $.post(url,dataString,function(data){
            $('#basic-modal-content').modal();
            $('#mensaje').html(data);
        });  
    });        
    
  $("body").on('focus',"#fecha",function(){
       $(this).datepicker({
        dateFormat: "dd/mm/yy",
        changeYear: true,
        yearRange: "1945:2025"
       });
  });

  $("body").on('focus',"#fechaentrega",function(){
       $(this).datepicker({
        dateFormat: "dd/mm/yy",
        changeYear: true,
        yearRange: "1945:2025"
       });
  });  
});

function selectTipoestudiociclo(n,valor){
    valor = (valor) ? valor : null;
    a      = "tipoestudiociclo["+n+"]";
    url    = base_url+"index.php/maestros/tipoestudiociclo/obtener";
    objRes = new Object();
    objRes.ciclo = $("#ciclo").val();
    dataString   = {objeto: JSON.stringify(objRes)};
    $.post(url,dataString,function(data){
        $.each(data, function(item,value){
            opt       = document.createElement('option');
            opt.value = value.TIPCICLOP_Codigo;
            if(valor==value.TIPCICLOP_Codigo){opt.selected=true;}
            texto     = value.TIPC_Nombre;
            opt.appendChild(document.createTextNode(texto));
            document.getElementById(a).appendChild(opt);
        });
    },"json");
}

function selectTema(n,tipoestudio,valor){
    valor = (valor) ? valor : null;
    b      = "tema["+n+"]";
    d      = "tipoestudiociclo["+n+"]";
    document.getElementById(b).options.length=0;
    opt       = document.createElement('option');
    opt.value = "0";
    opt.appendChild(document.createTextNode("::Seleccione::"));
    document.getElementById(b).appendChild(opt);
    tipoestudiociclo = (tipoestudio) ? tipoestudio : document.getElementById(d).value;
    //tipoestudiociclo = document.getElementById(d).value;
    url    = base_url+"index.php/almacen/tema/obtener";
    objRes = new Object();
    objRes.tipoestudiociclo = tipoestudiociclo;
    objRes.curso = $("#curso").val();
    dataString   = {objeto: JSON.stringify(objRes)};
    $.post(url,dataString,function(data){
        $.each(data, function(item,value){
            opt       = document.createElement('option');
            opt.value = value.PRODATRIBDET_Codigo;
            if(valor==value.PRODATRIBDET_Codigo){opt.selected=true;}
            texto     = value.PRODATRIB_Nombre +" - "+ value.TEMAC_Descripcion;
            opt.appendChild(document.createTextNode(texto));
            document.getElementById(b).appendChild(opt);
        });
    },"json");
}

function selectResponsable(n,valor){
    valor = (valor) ? valor : null;
    c      = "responsable["+n+"]";
    url    = base_url+"index.php/ventas/profesor/obtener";
    objRes = new Object();
    objRes.curso = $("#curso").val();
    dataString   = {objeto: JSON.stringify(objRes)};
    $.post(url,dataString,function(data){
        $.each(data, function(item,value){
            opt       = document.createElement('option');
            opt.value = value.PROP_Codigo;
            if(valor==value.PROP_Codigo){opt.selected=true;}
            texto     = value.PERSC_ApellidoPaterno+' '+value.PERSC_ApellidoMaterno+' '+value.PERSC_Nombre;
            opt.appendChild(document.createTextNode(texto));
            document.getElementById(c).appendChild(opt);
        });
    },"json");
}

function getCalendario(obj){
       $(obj).datepicker({
        dateFormat: "dd/mm/yy",
        changeYear: true,
        yearRange: "1945:2025"
       });
}