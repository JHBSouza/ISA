package br.com.isa.teste;

import javax.swing.JOptionPane;

import br.com.isa.beans.Usuario;
import br.com.isa.bo.UsuarioBO;
import br.com.isa.dao.UsuarioDAO;

public class TesteAluno {

	public static void main(String[] args) {
		int opcao =0;
		UsuarioDAO dao =null;
		try {
			dao = new UsuarioDAO();
			do {
				opcao=Integer.parseInt
						(JOptionPane.showInputDialog("Digite uma opção: \n1- Cadastrar\n2- Consultar\n3- Apagar\n4- Alterar Senha\n5- Sair"));
				switch (opcao) {
				case 1:
					UsuarioBO usuBo = new UsuarioBO();
					usuBo.validar();
					
					break;
				case 2:
					Usuario u = dao.getUser
					(Integer.parseInt
							(JOptionPane.showInputDialog("Digite o RM")));
					System.out.println("RM......: " + u.getrm());
					System.out.println("Nome....: " + u.getNome());
					System.out.println("Senha...: " + u.getSenha());
					System.out.println("Data....: " + u.getDataNascimento());
					System.out.println("Email...: " + u.getEmail());
					System.out.println("Telefone: " + "+" + u.getDdi() +" ("+ u.getDdd() +") " + u.getTelefone());
					break;
				case 3:
					int cod = Integer.parseInt
					(JOptionPane.showInputDialog("Digite o RM"));
					int x1 = dao.deleteUser(cod);
					if (x1 == 0){
						System.out.println("Aluno não encontrado");
					}else {
						System.out.println("Aluno apagado");
					}
					break;
				case 4:
					int x11 = dao.updatePassword(Integer.parseInt
							(JOptionPane.showInputDialog("Digite o RM")), JOptionPane.showInputDialog("Nova Senha: "));
					if (x11 == 0){
						System.out.println("Aluno não encontrado");
					}else {
						System.out.println("Senha Alterada");
					}	
					break;
				case 5:
					break;

				default:
					System.out.println("Opção inválida");
					break;
				}
			}while(opcao !=5);
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

}
