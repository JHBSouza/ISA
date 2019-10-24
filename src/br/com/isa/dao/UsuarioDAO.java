package br.com.isa.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.com.isa.beans.Usuario;
import br.com.isa.conexao.Conexao;

public class UsuarioDAO {

	private Connection con;
	private PreparedStatement stmt;
	private ResultSet rs; 
	
	public int updatePassword(int cod, String newPassword) throws Exception{
		stmt = con.prepareStatement
	("UPDATE T_SGC_ALUNO SET SN_ALUNO=? WHERE "
			+ "CD_RM=?");
		stmt.setString(1, newPassword);
		stmt.setInt(2, cod);
		return stmt.executeUpdate();
	}
	
	public void close() throws Exception{
		con.close();
	}
	
	public UsuarioDAO() throws Exception{
		con = Conexao.getConnection();
	}
	
	public int deleteUser(int cod) throws Exception{
		stmt = con.prepareStatement
			("DELETE FROM T_SGC_ALUNO WHERE CD_RM=? ");
		stmt.setInt(1, cod);
		return stmt.executeUpdate();
	}
	
	public int addUser(Usuario usu) throws Exception {
		stmt = con.prepareStatement
				("INSERT INTO T_SGC_ALUNO (CD_RM, NM_NOME, SN_ALUNO, DS_EMAIL, NR_CPF, NR_DDI, NR_DDD, NR_TELEFONE, DS_ENDERECO, DT_NASCIMENTO) VALUES (?,?,?,?,?,?,?,?,?,to_date(?,'ddmmyyyy'))");
		stmt.setInt(1, usu.getrm());
		stmt.setString(2, usu.getNome());
		stmt.setString(3,  usu.getSenha());
		stmt.setString(4,  usu.getEmail());
		stmt.setString(5,  usu.getCpf());
		stmt.setInt(6, usu.getDdi());
		stmt.setInt(7, usu.getDdd());
		stmt.setInt(8, usu.getTelefone());
		stmt.setString(9, usu.getEndereco());
		stmt.setString(10, usu.getDataNascimento());
		return stmt.executeUpdate();
	}
	
	public Usuario getUser(int rm) throws Exception{
		stmt = con.prepareStatement("SELECT * FROM T_SGC_ALUNO WHERE CD_RM=?");
		stmt.setInt(1, rm);
		rs=stmt.executeQuery();
		if(rs.next()) {
			Usuario objeto = new Usuario();
			objeto.setrm(rs.getInt("CD_RM"));
			objeto.setNome(rs.getString("NM_NOME"));
			objeto.setSenha(rs.getString("SN_ALUNO"));
			objeto.setEmail(rs.getString("DS_EMAIL"));
			objeto.setCpf(rs.getString("NR_CPF"));
			objeto.setDdi(rs.getInt("NR_DDI"));
			objeto.setDdd(rs.getInt("NR_DDD"));
			objeto.setTelefone(rs.getInt("NR_TELEFONE"));
			objeto.setEndereco(rs.getString("DS_ENDERECO"));
			objeto.setDataNascimento(rs.getString("DT_NASCIMENTO"));
			return objeto;
		}else {
			return new Usuario();
		}
	}
	public int loginAluno(int cod, String senha) throws Exception {
		stmt = con.prepareStatement("SELECT NR_RM, SN_ALUNO FROM T_SGC_ALUNO WHERE NR_RM=? AND SN_ALUNO=?");
		stmt.setInt(1, cod);
		stmt.setString(2, senha);
		rs = stmt.executeQuery();
		if (rs.next()) {
			return rs.getInt("NR_RM");
		} else
			return 0;
	}

	
	
}
