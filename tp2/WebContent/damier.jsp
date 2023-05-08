<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>damier</title>
<style>
		table {
			border-collapse: collapse;
		}
		td {
			width: 50px;
			height: 50px;
			border: 1px solid black;
		}
		.white {
			background-color: white;
		}
		.black {
			background-color: black;
		}
	</style>
</head>
<body>
	<%
		int N = 8; // Nombre de lignes et de colonnes
		for (int i = 1; i <= N; i++) {
			out.println("<tr>");
			for (int j = 1; j <= N; j++) {
				if ((i + j) % 2 == 0) {
					out.println("<td class=\"white\"></td>");
				} else {
					out.println("<td class=\"black\"></td>");
				}
			}
			out.println("</tr>");
		}
	%>
</body>
</html>