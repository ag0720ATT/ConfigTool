<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- ResourceBundle resource = ResourceBundle.getBundle("com.att.blackflag.json.resource.ApplicationProperties",Locale.getDefault()); %>--> 

<%@page import="java.util.ResourceBundle" %>
<%@page import="java.util.HashMap" %>
<% ResourceBundle resource = ResourceBundle.getBundle("com.att.blackflag.json.resource.ApplicationProperties"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/table.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Home</title>
	<script type="text/javascript">
	
	</script>
</head>
<body background="images/chatback.png">

	<form name="envForm" action="JSONMapperServlet" method="post">
	<center><br><br>
	<h1>BlagFlag Environment Configuration</h1>
	<br><br><br>
	<p style="color: red;font-family: sans-serif ;font-size: 12px" id="errors"></p>
	<div  class="CSSTableGenerator">
	<table>
			<tr>
				<td>Api Name:</td>
				<td colspan="2">
				<div  class="styled-select">
					 <select id="apiName" name="apiName">
					   <option value="-1">--Please Select--</option>
					   <% String[] apiList = resource.getString("API-NAMES").split(",");
					   		for(String api : apiList){ %>
					   			<option value='<%=api%>'><%=api%></option>		
					   		<%}
					   %>
					</select>
					</div>
				</td>
			</tr>
			<tr>
				<td>Environment Name:</td>
				<td colspan="2">
				<div  class="styled-select">
					 <select id="envName" name="envName">
					   <option value="-1">--Please Select--</option>
					   <% String[] envList = resource.getString("ENVIRONMENT-NAMES").split(",");
					   		for(String env : envList){ %>
					   			<option value='<%=env%>'><%=env%></option>		
					   		<%}
					   %>
					</select>
					</div>
				</td>
			</tr>
			
			

	</table>
	</div>
	</center>
	</form>
</body>
</html>