package DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import beans.Task;
import beans.Voto;



public class VotoDao {
	private final Connection conn;
	public VotoDao() {
		conn = new Conexao().retornaConexao();
	}
	public void somaVoto(String nome, String data, String email) throws SQLException {
		PreparedStatement stmt;
		stmt=conn.prepareStatement("update voto set "+data+"="+data+"+1 where fk_task_id="
				+ "(SELECT id FROM task WHERE task.nome = '"+nome+"'"
				+ "and task.fk_Id_user =(SELECT id FROM usuarios where usuarios.email = '"+email+"'))");
		stmt.execute();
		System.out.println(nome+ data+ email);
	}
	public String retornaVotos(String data,String nome, String email) throws SQLException {
		Statement stmt;
		ResultSet rs;
		stmt=conn.createStatement();
		rs=stmt.executeQuery("SELECT "+data+" from voto WHERE fk_task_id ="
				+ "(SELECT id FROM task WHERE task.nome = '"+nome+"'"
				+ "and task.fk_Id_user ="
				+ "(SELECT id FROM usuarios WHERE usuarios.email = '"+email+"'))");
		if(rs.next()) {
		rs.getString(data);
		if(rs.getString(data)!=null) {
			return rs.getString(data);
		}
		} else {
			return "0";
		}
		
		return rs.getString(data);
	}
	public void excluirVotacao(String nome, String email){
        PreparedStatement stmt;
        try{
            stmt=conn.prepareStatement(
              "delete from voto WHERE fk_task_id ="
              + "(SELECT id FROM task WHERE task.nome = '"+nome+"'"
              + "and task.fk_Id_user ="
              + "(SELECT id FROM usuarios WHERE usuarios.email = '"+email+"'))");
            stmt.execute();
            stmt.close();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }
}
