package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CatalogDAO;

@WebServlet("/add")
public class AddDataController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String type = request.getParameter("type");
		if (type.equals("catalog")) {
			String catalog_main_name = request.getParameter("catalog_main");
			if (catalog_main_name=="") {
				request.setAttribute("errorField1", true);
				request.getRequestDispatcher("WEB-INF/views/adminka.jsp").forward(request, response);
			}
			else {
				String subcat1 = request.getParameter("subcat1");
				String subcat2 = request.getParameter("subcat2");
				CatalogDAO.addCatalog(catalog_main_name, subcat1, subcat2);
				response.sendRedirect("admin");
			}
			
		}
		

	}

}
