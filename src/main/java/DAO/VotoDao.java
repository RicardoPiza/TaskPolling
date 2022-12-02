package DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class VotoDao {
	private final Connection conn;
	public VotoDao() {
		conn = new Conexao().retornaConexao();
	}
	public void somaVoto(int id,String data) throws SQLException {
		PreparedStatement stmt;
		stmt=conn.prepareStatement("update voto set "+data+"="+data+"+1 where fk_task_id="+id);
		stmt.execute();
	}
	public String retornaVotos(String data,int id) throws SQLException {
		Statement stmt;
		ResultSet rs;
		stmt=conn.createStatement();
		rs=stmt.executeQuery("select "+data+" from voto where fk_task_id="+id);
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
}
