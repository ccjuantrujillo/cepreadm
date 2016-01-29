jQuery(document).ready(function(){     
   $("body").on("click","#buscar",function(){
        $("#form_busqueda").submit();
    });    
    
    $("body").on('click',"#imprimir",function(){
        codigo   = $("#codigo").val();
        url = base_url+"index.php/ventas/acta/ver/"+codigo;
        window.open(url, this.target, 'width=800,height=400,top=150,left=200');
    });    
    
    $("body").on('click',"#cancelar",function(){
        window.close();
    });      
    
    $("body").on('click',"#importar",function(){
        url        = base_url+"index.php/ventas/profesor/obtener";
		n          = $("#table-detalle-profesor tr").length - 1;
        objeto     = new Object();
        objeto.curso = $("#curso").val();
        dataString   = {objeto:JSON.stringify(objeto)};
        fila         = "";
        $.post(url,dataString,function(data){
            $.each(data,function(item,value){
				clase = n%2==0?'list_a':'list_b';
                fila += "<tr class='"+clase+"'>";
                fila += "<td>"+(n+1)+"<input type='hidden' id='codigo["+n+"]' name='codigo["+n+"]' value=''><input type='hidden' id='profesor["+n+"]' name='profesor["+n+"]' value='"+value.PROP_Codigo+"'></td>";
                fila += "<td>"+value.PROD_Nombre+"</td>";
                fila += "<td>"+value.PERSC_ApellidoPaterno+" "+value.PERSC_ApellidoMaterno+" "+value.PERSC_Nombre+"</td>";
                fila += "<td><input type='time' value='' id='hingreso["+n+"]' name='hingreso["+n+"]' class='cajaReducida'></td>";
                fila += "<td><input type='time' value='' id='hsalida["+n+"]' name='hsalida["+n+"]' class='cajaReducida'></td>";
                fila += "<td><input type='text' value='' id='observacion["+n+"]' name='observacion["+n+"]' class='cajaGrande'></td>";
                fila += "<td align='center'><a href='#' class='eliminar'>Eliminar</a></td>";
                fila += "<tr>";  
				n++;
            });
            $("#table-detalle-profesor").append(fila);
        },"json");            
    });     
    
    $("body").on('click',"#grabar",function(){
        url        = base_url+"index.php/ventas/actaprofesor/grabar";
        dataString = $('#frmPersona').serialize();
        $.post(url,dataString,function(data){
            if(data=="true"){
                alert('Operacion realizada con exito');    
                window.close();
            }
            else if(data=="false"){
                alert('Hubo problemas con la grabación, vuelva a intentarlo.');
            }
        });            
    }); 
    
//    $("body").on("click",".eliminar",function(){
//       if(confirm('Esta seguro desea eliminar este registro?')){
//            coddetalle = $(this).parent().parent().attr("id");
//            dataString = "codigo="+coddetalle;
//            url = base_url+"index.php/ventas/acta/eliminar";
//            $.post(url,dataString,function(data){
//                if(data=="true"){
//                    //alert('Operacion realizada con exito');  
//                    url = base_url+"index.php/ventas/acta/listar";
//                    location.href = url;
//                }
//                else if(data=="false"){
//                    alert("No se puede eliminar el registro");
//                }
//            });           
//       }        
//    });           
    
    $("body").on("click",".eliminar",function(){
       if(confirm('Esta seguro desea eliminar este registro?')){
            coddetalle = $(this).parent().parent().attr("id");
            $(this).parent().parent().remove();
            dataString = "codigo="+coddetalle;
            url = base_url+"index.php/ventas/actaprofesor/eliminar";
            $.post(url,dataString,function(data){
               
            });
       }        
    });      
   $("body").on("click",".editar",function(){
        codigo = $(this).parent().parent().attr("id");
        dataString = "";    
        url = base_url+"index.php/ventas/acta/editar/e/"+codigo;
        $.post(url,dataString,function(data){
            $('#basic-modal-content').modal();
            $('#mensaje').html(data);
        });  
    });        
});