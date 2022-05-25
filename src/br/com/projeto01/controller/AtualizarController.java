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
 * Servlet implementation class AtualizarController
 */
@WebServlet("/AtualizarController")
public class AtualizarController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AtualizarController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String tipo = request.getParameter("tipo");
		String marca = request.getParameter("marca");
		double preco = Double.parseDouble(request.getParameter("preco"));
		String data = request.getParameter("data");
		
		ProdutoModel produto = new ProdutoModel(nome,tipo,marca,preco,data);
		
		ProdutoBO produtoBO = new ProdutoBO ();
		produtoBO.alteraProduto(produto);
		
		request.setAttribute("produto", produto);
		request.getRequestDispatcher("formAtualizarProduto.jsp").forward(request, response);
		
	}

}
