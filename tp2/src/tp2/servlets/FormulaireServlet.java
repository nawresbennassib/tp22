package tp2.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormulaireServlet
 */
@WebServlet("/FormulaireServlet")
public class FormulaireServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormulaireServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op1 = request.getParameter("op1");
		String op2 = request.getParameter("op2");
		String operation = request.getParameter("operation");
		
		// V�rification si les champs op�rande1 et op�rande2 sont vides
		if(op1.trim().isEmpty() || op2.trim().isEmpty()) {
			RequestDispatcher disp = request.getRequestDispatcher("erreur.jsp");
			disp.forward(request, response);
			return;
		}
		
		// V�rification si une op�ration est s�lectionn�e
		if(operation == null) {
			RequestDispatcher disp = request.getRequestDispatcher("erreur.jsp");
			disp.forward(request, response);
			return;
		}
		
		// Conversion des op�randes en entiers
		int operande1 = Integer.parseInt(op1);
		int operande2 = Integer.parseInt(op2);
		
		// Traitement des calculs selon l'op�ration s�lectionn�e
		int resultat = 0;
		switch(operation) {
			case "addition":
				resultat = operande1 + operande2;
				break;
			case "soustraction":
				resultat = operande1 - operande2;
				break;
			case "multiplication":
				resultat = operande1 * operande2;
				break;
			case "division":
				if(operande2 == 0) {
					RequestDispatcher disp = request.getRequestDispatcher("erreur.jsp");
					disp.forward(request, response);
					return;
				}
				resultat = operande1 / operande2;
				break;
		}
		
		// Ajout du r�sultat � la requ�te pour �tre affich� dans la page response.jsp
		request.setAttribute("resultat", resultat);
		
		// Redirection vers la page response.jsp
		RequestDispatcher disp = request.getRequestDispatcher("response.jsp");
	}

}
