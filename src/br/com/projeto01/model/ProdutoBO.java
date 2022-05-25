package br.com.projeto01.model;

import java.util.ArrayList;

public class ProdutoBO {
	
	ProdutoDAO produtoDAO = new ProdutoDAO();
	
	public boolean addProduto(ProdutoModel produto){
		
		return produtoDAO.addProduto(produto);
	}
	
	public ArrayList<ProdutoModel> showProduto(){
		return produtoDAO.showProdutos();
	}
	
	public boolean alteraProduto(ProdutoModel produto) {
		
		return produtoDAO.alteraProduto(produto);
	}
	
	public boolean deletarProduto(ProdutoModel produto) {
		
		return produtoDAO.deletarProduto(produto.getID());
	}
}
