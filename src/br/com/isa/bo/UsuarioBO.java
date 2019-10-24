package br.com.isa.bo;

import javax.swing.JOptionPane;


import br.com.isa.beans.Usuario;
import br.com.isa.dao.UsuarioDAO;

public class UsuarioBO{
	int rm;
	String nome;
	String senha;
	String email;
	String cpf;
	String dataNascimento;
	int ddd;
	int ddi;
	int telefone;
	String endereco;
	String data;
	
	int auxRm= 0;
	String auxNome;
	String auxSenha;
	String auxEmail;
	String auxCpf;
	int auxDDI = 0;
	int auxDDD = 0;
	int auxTelefone = 0;
	String auxEndereco;
	String auxData;


	public void validar() throws Exception {
		 auxRm = Integer.parseInt(JOptionPane.showInputDialog("Digite o RM"));	
		 
		 if(auxRm<=0) {
			 throw new Exception("RM invalido");
		 }
		 auxNome = JOptionPane.showInputDialog("Nome do Usuário");
		 if(auxNome == null) {
			 throw new Exception("Nome não pode ser nulo");
		 }
		 auxSenha = JOptionPane.showInputDialog("Senha do Usuário");
		 if(auxSenha == null) {
			 throw new Exception("Senha não pode ser nula");
		 }
		 auxEmail = JOptionPane.showInputDialog("Email do usuario");
		 if(auxEmail == null) {
			 throw new Exception("Email não pode ser nulo");
		 }
		 auxCpf = JOptionPane.showInputDialog("cpf");
		 
		 if(auxCpf == null) {
			 throw new Exception("CPF não pode ser nulo");
		 }
		 
		 auxDDI = Integer.parseInt(JOptionPane.showInputDialog("DDI"));
		 if(auxDDI<=0 || auxDDI>999) {
			 throw new Exception("DDI Invalido");
		 }
		 
		 auxDDD = Integer.parseInt(JOptionPane.showInputDialog("DDD"));
		 if(auxDDD<=0 || auxDDD>99) {
			 throw new Exception("DDD Invalido");
		 }
		 auxTelefone = Integer.parseInt(JOptionPane.showInputDialog("Numero Telefone"));
		 if(auxTelefone<=0) {
			 throw new Exception("Telefone Invalido");	 
		 }
		 auxEndereco = JOptionPane.showInputDialog("Endereco");
		 if(auxEndereco == null) {
			 throw new Exception("Endereço Invalido");
		 }
		 
		 String dia = JOptionPane.showInputDialog("Dia");
		 if(Integer.parseInt(dia) <= 0 || Integer.parseInt(dia)>31) {
			 throw new Exception("Dia Inválido");
		 }
		 if(Integer.parseInt(dia) >=1 && Integer.parseInt(dia)<=9) {
			 dia = "0".concat(dia);
		 }
	
		 String mes = JOptionPane.showInputDialog("Mes");
		 if(Integer.parseInt(mes) <= 0 || Integer.parseInt(mes)>12) {
			 throw new Exception("Mes Inválido");
		 }
		 if(Integer.parseInt(mes) >=1 && Integer.parseInt(mes)<10) {
			 mes = "0".concat(mes);
		 }
		 String ano = JOptionPane.showInputDialog("ano");
		 if(Integer.parseInt(ano)<=0) {
			 throw new Exception("Ano Inválido");
		 }
		 
		 //
		 auxData = dia.concat(mes).concat(ano);
		 System.out.println(auxData);
		 
		 
		adicionaUsuario();
		 
	}

	
	public void adicionaUsuario() {
		
	
		UsuarioDAO dao =null;
		try {
			dao = new UsuarioDAO();
			int x = dao.addUser(new Usuario(
					 auxRm, auxNome, auxSenha, auxEmail, auxCpf, auxDDI, auxDDD, auxTelefone, auxEndereco, auxData));

			if (x == 0){
				System.out.println("Alunos não cadastrado");
			}else {
				System.out.println("Aluno Cadastrado");
			}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				try {
					dao.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}


		}
	public int loginAluno(int cod, String senha) throws Exception {
		UsuarioDAO alunoDAO = new UsuarioDAO();
		int a = alunoDAO.loginAluno(cod, senha);
		return a;
	}

	}
