jQuery(document).ready(function(){
//$(".nav li").hover(function(){
//   $(this).find('ul:first:hidden').css({visibility: "visible",display: "none"}).slideDown(600);    
// },function(){
//	 $(this).find('ul:first').slideUp(100);  
//    });      
     
    $("#nuevo").click(function(){
        dataString = "";
        url = base_url+"index.php/seguridad/usuario/editar/n";
        $.post(url,dataString,function(data){
            $('#basic-modal-content').modal();
            $('#mensaje').html(data);
        });             
    });	
    
    $("#grabar").click(function(){
        url = base_url+"index.php/seguridad/usuario/grabar";
        dataString  = $('#form1').serialize();
        $.post(url,dataString,function(data){
            if(data[0]){
                alert('Operacion realizada con exito');
                location.href = base_url+"index.php/seguridad/usuario/listar";
            }
            else{
                alert(data[1]);
            }
        },"json");          
    });    
    
    $("#limpiar").click(function(){
        url = base_url+"index.php/seguridad/usuario/listar";
        $("#nombre_unidadmedida").val('');
        $("#simbolo").val('');
        location.href=url;
    });
    
    $("#cancelar").click(function(){
        url = base_url+"index.php/seguridad/usuario/listar";
        location.href = url;
    });  
    
    $("#buscar").click(function(){
	$("#frmBusqueda").submit();
    });	    

    $("#nombres").blur(function(){
        login = $.trim($("#login").val());
        paterno = $("#paterno").val().toLowerCase();
        materno = $("#materno").val().toLowerCase();
        nombres = $("#nombres").val().toLowerCase();
        cadena = nombres.substr(0,1)+paterno;
        if(login==""){
            $("#login").val(cadena);
        }
    });	   
    
   $("body").on("click",".eliminar",function(){
       if(confirm('Esta seguro desea eliminar este registro?')){
            coddetalle = $(this).parent().parent().attr("id");
            dataString = "codigo="+coddetalle;
            url = base_url+"index.php/seguridad/usuario/eliminar";
            $.post(url,dataString,function(data){
                if(data=="true"){
//                    alert('Operacion realizada con exito');  
                    url = base_url+"index.php/seguridad/usuario/listar";
                    location.href = url;                                        
                }
                else if(data=="false"){
                    alert("No se puede eliminar el registro,\nel usuario tiene permisos");
                }
            });
       }
   }); 
   
   $("body").on("click",".editar",function(){
        coddetalle = $(this).parent().parent().attr("id");
        dataString = "codigo="+coddetalle;
        url = base_url+"index.php/seguridad/usuario/editar/e/"+coddetalle;
        $.post(url,dataString,function(data){
            $('#basic-modal-content').modal();
            $('#mensaje').html(data);
        }); 
   }); 
   
    $("body").on('click',"#ver_profesor",function(){
        dataString = "flgcoordinador=1";
        url = base_url+"index.php/ventas/profesor/buscar/";   
        window.open("","popup","width=700,height=400,scrollbars=yes,status=yes,resizable=yes,screenx=0,screeny=0");          
        $("#form1").attr("target","popup");
        $("#form1").attr("method","post");
        $("#form1").attr("action",url);
        $("#form1").submit();
    });      
});

function selecciona_profesor(codigo){
    url    = base_url+"index.php/ventas/profesor/obtener/";
    objRes = new Object();
    objRes.profesor = codigo;
    dataString   = {objeto: JSON.stringify(objRes)};
    $.post(url,dataString,function(data){
        $.each(data, function(item,value){
            $("#paterno").val(value.PERSC_ApellidoPaterno);
            $("#materno").val(value.PERSC_ApellidoMaterno);
            $("#nombres").val(value.PERSC_Nombre);            
            $("#codigo_padre").val(value.PERSP_Codigo); 
            $("#curso").val(value.PROD_Codigo); 
            $("#profesor").val(value.PROP_Codigo); 
            $("#login").val('');  
            $("#clave").val('');  
            $("#rol").val(6); 
            
        });
    },"json");
}