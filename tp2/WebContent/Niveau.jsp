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
    // Retrieve form data
    String nom = request.getParameter("nom");
    String connaissances = request.getParameter("connaissances");
    String expertise = request.getParameter("conna");

    // Calculate score
    int score = 0;
    if (connaissances.equals("faibles")) {
        score += 1;
    } else if (connaissances.equals("moyennes")) {
        score += 2;
    } else if (connaissances.equals("bonnes")) {
        score += 3;
    }
    if (expertise.equals("moyenne")) {
        score += 1;
    } else if (expertise.equals("bonne")) {
        score += 2;
    }

    // Determine level and display message
    String message;
    if (score < 3) {
        message = "Vous êtes un débutant";
    } else if (score < 5) {
        message = "Vous avez un niveau moyen";
    } else {
        message = "Vous êtes un expert !";
    }
%>

<h2>Résultat pour <%= nom %> :</h2>
<p><%= message %></p>
</body>
</html>