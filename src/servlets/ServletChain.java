package servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;

import chain.Weather;

@WebServlet(name = "ServletChain", urlPatterns = { "/ServletChain" }, initParams = { @WebInitParam(name = "ressourceDir", value = "C:\\GIT\\workshopblockchain\\dossier") })
public class ServletChain extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		System.out.println("Dans le init ! Appelé une seule fois lors de la première invocation");

		// Server.init(config.getInitParameter("ressourceDir"));
	}

	/**
	 * Handles the HTTP <code>GET</code> method.
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String forwardTo = "";
		String message = "";

		forwardTo = "index.jsp?action=todo";
		message = "La fonctionnalité pour le paramètre " + action + " est à implémenter !";

		RequestDispatcher dp = request.getRequestDispatcher(forwardTo + "&message=" + message);
		dp.forward(request, response);
	}

	/**
	 * Handles the HTTP <code>POST</code> method.
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String forwardTo = "";
		String message = "";

		if (action != null) {
			if (action.equals("souscription")) {
				request.setAttribute("listeDe", "");
				forwardTo = "index.jsp?action=souscription";
				message = "Liste des ";
			} else if (action.equals("meteo")) {
				Double temperature = 0.0;
				try {
					temperature = Weather.getTemps("Montpellier");
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				request.setAttribute("meteo", temperature);
				forwardTo = "index.jsp?action=meteo";
				message = "Temps à montpellier";
			} else {
				forwardTo = "index.jsp?action=todo";
				message = "La fonctionnalité pour le paramètre " + action + " est à implémenter !";
			}
		}
		RequestDispatcher dp = request.getRequestDispatcher(forwardTo + "&message=" + message);
		dp.forward(request, response);
	}

	/**
	 * Returns a short description of the servlet.
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}

}
