<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
</head>
<body>
 
<div id="manage_user">
<table id="table">
  <thead>  
  <tr>
    <th><input type='checkbox' class='selectAll' name='selectAll' value='' /> id</th>
    <th>Sim</th>
    <th>Số nút</th>
  </tr>
  </thead>
  <tbody id="appendData">
  	
 </tbody>
</table>
</div>

<input type="button" name="clickme" id="clickme" onclick="load_ajax()" value="Click Me"/>
        
<script>
function load_ajax(){
$.ajax({
    type: "POST", // HTTP method POST or GET
    url: '${pageContext.request.contextPath}/sim/findSimDetail', 
    //Where to make Ajax calls
    //dataType:"text", // Data type, HTML, json etc.
    dataType: 'json',
//     data: {
//         id: $('#id').val(),
//         realNumber: $('#realNumber').val(),
//         sumOfNumbers: $('#sumOfNumbers').val()
//     },
    success: function(data) {
    	console.log(data); 
    	//$('#manage_user table > tbody').prepend(data);
        //alert(data);
        data.forEach(v = {
        	//$('#appendData').prepend('<tr>'+
        		//	'<td>'+v.id+'</td>'+
        			//'<td>'+v.realNumber+'</td>'+ 
        			//'<td>'+v.score+'</td>'+ 
        			//'</tr>');
        	var tr = document.createElement('tr');
        	var tdId =  document.createElement('td');
        	tdId.innerHTML = v.id;
        	var tdRealNumber =  document.createElement('td');
        	tdRealNumber.innerHTML = v.realNumber;
        	var tdScore =  document.createElement('td');
        	tdScore.innerHTML = v.score;
        	tr.append(tdId);
        	tr.append(tdRealNumber);
        	tr.append(tdScore);
        	$('#appendData').prepend(tr);
        });
        
    },
    error: function(xhr, ajaxOptions, thrownError) {
        //On error, we alert user
        alert(thrownError);
    },
    complete: function() {
        //alert('update success'); 
    }
});
}

</script>
 
</body>
</html>