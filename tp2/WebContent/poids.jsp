<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <h1>Calcul de poids id�al</h1>
    <%
        // R�cup�ration des donn�es envoy�es par le formulaire
        String tailleStr = request.getParameter("taille");
        String sexe = request.getParameter("sexe");
        
        // Conversion de la taille en nombre
        double taille = Double.parseDouble(tailleStr);
        
        // Calcul du poids id�al en fonction du sexe
        double poidsIdeal = 0;
        if(sexe.equals("homme")) {
            poidsIdeal = (62.1 * taille) - 44.7;
        } else if(sexe.equals("femme")) {
            poidsIdeal = (72.7 * taille) - 58;
        }
    %>
    <p>Votre poids id�al est : <%= poidsIdeal %> Kg</p>
</body>
</html>