package br.com.projeto01.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.projeto01.model.ProdutoBO;
import br.com.projeto01.model.ProdutoModel;

/**
 * Servlet implementation class DeletarController
 */
@WebServlet("/DeletarController")
public class DeletarController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletarController() {
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
		ArrayList<ProdutoModel>produto = new ArrayList<ProdutoModel>();
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		
		ProdutoBO produtoBO = new ProdutoBO();
		//produto = produtoBO.deletarProduto(getID);
		
		request.setAttribute("produto", produto);
		request.getRequestDispatcher("formDeletarProduto.jsp").forward(request, response);
	}

}
