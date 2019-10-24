package br.com.isa.beans;


public class Usuario {
	private int rm;
	private String nome;
	private String senha;
	private String email;
	private String cpf;
	private String dataNascimento;
	private int ddd;
	private int ddi;
	private int telefone;
	private String endereco;
	
	
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public int getRm() {
		return rm;
	}
	public void setRm(int rm) {
		this.rm = rm;
	}
	public String getDataNascimento() {
		return dataNascimento;
	}
	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	public int getDdd() {
		return ddd;
	}
	public void setDdd(int ddd) {
		this.ddd = ddd;
	}
	public int getDdi() {
		return ddi;
	}
	public void setDdi(int ddi) {
		this.ddi = ddi;
	}
	public int getTelefone() {
		return telefone;
	}
	public void setTelefone(int telefone) {
		this.telefone = telefone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public Usuario(int rm, String nome, String senha, String email, String cpf, int ddi, int ddd,  int telefone, String endereco, String dataNascimento) {
		super();
		this.rm = rm;
		this.nome = nome;
		this.senha = senha;
		this.email = email;
		this.cpf = cpf;
		this.ddi = ddi;
		this.ddd = ddd;
		this.telefone = telefone;
		this.endereco = endereco;
		this.dataNascimento = dataNascimento;
	}
	public Usuario() {
		super();
	}
	public int getrm() {
		return rm;
	}
	public void setrm(int rm) {
		this.rm = rm;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
}
