<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>XIN CHÀO!!! ${mess}</p>
	<form action="/SimSim/listCheckbox">
		<input name="listCheckbox" value="1" type="checkbox"> <span> 1 </span>
		<input name="listCheckbox" value="2" type="checkbox"> <span> 2 </span>
		<input name="listCheckbox" value="3" type="checkbox"> <span> 3 </span>
		<input name="listCheckbox" value="4" type="checkbox"> <span> 4 </span>
		<input name="listCheckbox" value="5" type="checkbox"> <span> 5 </span>
		<input name="listCheckbox" value="6" type="checkbox"> <span> 6 </span>
		<input name="listCheckbox" value="7" type="checkbox"> <span> 7 </span>
		<input name="listCheckbox" value="8" type="checkbox"> <span> 8 </span>
		<input name="listCheckbox" value="9" type="checkbox"> <span> 9 </span>
		<input type="submit" value="Submit"/>
	</form>
</body>
</html>