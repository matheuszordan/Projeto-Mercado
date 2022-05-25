package br.com.projeto01.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class ProdutoDAO {
	
	private Connection connection ; 
	private PreparedStatement ps ;
	private Statement st;
	private ResultSet rs;
	private ArrayList <ProdutoModel> produto = new ArrayList<ProdutoModel>();
	
	
	public ProdutoDAO () {
		connection = new ConnectionFactory().getConnection();
	}
	
	public boolean addProduto(ProdutoModel produto) {
		String sql = "INSERT INTO produto(nome,tipo,marca,preco,dataCadastro)value(?,?,?,?,?)";
		
		try {
			ps=connection.prepareStatement(sql);
			ps.setInt(1,produto.getID());
			ps.setString(2,produto.getNome());
			ps.setString(3, produto.getTipo());
			ps.setString(4,produto.getMarca());
			ps.setDouble(5, produto.getPreco());
			ps.setString(6,produto.getDatacadastro());
			ps.execute();
			ps.close();
			
			return true;
		}catch(Exception erro) {
			return false;
		}
	}
	
	public ArrayList<ProdutoModel> showProdutos (){
		String sql="SELECT * FROM produto";
		
		try {
			st=connection.createStatement();
			rs=st.executeQuery(sql);
			
			while(rs.next()) {
			produto.add(new ProdutoModel(rs.getString("nome"),rs.getString("tipo"),rs.getString("marca"),rs.getDouble("preco"),rs.getString("data")));
			
			}
		}catch(Exception erro) {
			System.out.println("ERROR" +erro);
		}
		return produto;
	
	}
	public boolean deletarProduto(int toDelete){
		String sql = "DELETE FROM produto WHERE id = ?";
		
		try {
		ps=connection.prepareStatement(sql);
		ps.setInt(1,toDelete);
        ps.executeUpdate();
		
		return true;	
		}catch(Exception erro) {
		return false;
		
		}
	}
	
	 public boolean alteraProduto(ProdutoModel produto) {
	        String sql = "UPDATE produto SET nome = ?, valor = ?, descricao= ?"
	                + "WHERE idProduto = ? ;";
	        
	        try {
	            ps =connection.prepareStatement(sql);
	            ps.setString(1,produto.getNome());
				ps.setString(2, produto.getTipo());
				ps.setString(3,produto.getMarca());
				ps.setDouble(4, produto.getPreco());
				ps.setString(5,produto.getDatacadastro());
	            ps.executeUpdate();
	            return true;
	        } catch(Exception erro) {
	    		return false;
	    		
	        }
	    }
	
}
