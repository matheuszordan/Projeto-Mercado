package br.com.projeto01.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.projeto01.model.ProdutoBO;
import br.com.projeto01.model.ProdutoModel;

/**
 * Servlet implementation class produtoController
 */
@WebServlet("/produtoController")
public class ProdutoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProdutoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String tipo = request.getParameter("tipo");
		String marca = request.getParameter("marca");
		double preco = Double.parseDouble(request.getParameter("preco"));
		String data = request.getParameter("data");
		
		ProdutoModel produto = new ProdutoModel(nome,tipo,marca,preco,data);
		
		ProdutoBO produtoBO = new ProdutoBO ();
		produtoBO.addProduto(produto);
		
		request.setAttribute("cadastro", produto);
		request.getRequestDispatcher("cadastro.jsp").forward(request, response);
		
		
		
	}

}
