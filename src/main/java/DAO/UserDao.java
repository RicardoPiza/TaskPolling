package DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import beans.User;

public class UserDao {
	private final Connection conn;
	public UserDao() {
		conn = new Conexao().retornaConexao();
	}
	public void inserir(User u) {
		PreparedStatement stmt;
		try{
            stmt=conn.prepareStatement(
              "insert into usuarios (id,nome,email,senha) values(?,?,?,?)");
            stmt.setInt(1,u.getId());
            stmt.setString(2,u.getNome());
            stmt.setString(3,u.getEmail());
            stmt.setString(4,u.getSenha());
            stmt.execute();
            stmt.close();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
	}
	public boolean validarCadastro(String email) throws SQLException {
		PreparedStatement stmt;
		ResultSet rs;
		
			stmt=conn.prepareStatement(
              "select * from usuarios where email = '"+email+"'");
            
            System.out.print(email +"  "+stmt.getMaxRows());
            rs = stmt.executeQuery();
            if(rs.next()) {
            	return false;           	
            }
            else {
            	System.out.print(email +"  "+rs.next());
            	return true;
            }
        }
	public boolean validarLogin(String email, String senha) throws Exception {
		String sql = "Select * from usuarios where email = '" + email + 
				"' and senha = '" + senha + "'";

		PreparedStatement statement = conn.prepareStatement(sql);
		ResultSet resultSet = statement.executeQuery();
		
		if (resultSet.next()) {
			return true;
		}else {
			return false;
		}
	}
	
	
	
}
