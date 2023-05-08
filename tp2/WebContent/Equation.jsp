<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		// R�cup�ration des param�tres du formulaire
		String aStr = request.getParameter("a");
		String bStr = request.getParameter("b");
		String cStr = request.getParameter("c");

		// Conversion des param�tres en float
		float a = Float.parseFloat(aStr);
		float b = Float.parseFloat(bStr);
		float c = Float.parseFloat(cStr);

		// Calcul du discriminant
		float delta = b * b - 4 * a * c;

		if (delta < 0) {
			// Affichage d'un message d'erreur en cas de discriminant n�gatif
	%>
			<div style="background-color:red;">
				<h1>Aucun r�sultat r�el</h1>
			</div>
	<%
		} else if (delta == 0) {
			// Affichage du r�sultat en cas de discriminant nul
			float x = -b / (2 * a);
	%>
			<div style="background-color:white;">
				<h1>R�sultat: x = <%=x%></h1>
			</div>
	<%
		} else {
			// Affichage des r�sultats en cas de discriminant positif
			float x1 = (-b + (float) Math.sqrt(delta)) / (2 * a);
			float x2 = (-b - (float) Math.sqrt(delta)) / (2 * a);
	%>
			<div style="background-color:green;">
				<h1>R�sultats:</h1>
				<ul>
					<li>x1 = <%=x1%></li>
					<li>x2 = <%=x2%></li>
				</ul>
			</div>
	<%
		}
	%>

</body>
</html>