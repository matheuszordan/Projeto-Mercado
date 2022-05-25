package br.com.projeto01.model;

public class ProdutoModel {
	private int ID;
	private String nome;
	private String tipo;
	private String marca;
	private double preco;
	private String dataCadastro;
	
	public ProdutoModel(String nome, String tipo, String marca, double preco, String dataCadastro) {
		super();
		this.nome = nome;
		this.tipo = tipo;
		this.marca = marca;
		this.preco = preco;
		this.dataCadastro = dataCadastro;
	}

	public int getID() {
		return ID;
	}

	public void setID(int ID) {
		this.ID = ID;
	}
	
	
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public String getDatacadastro() {
		return dataCadastro;
	}

	public void setData(String dataCadastro) {
		this.dataCadastro = dataCadastro;
	}
	
	
	
	
	
	
}
