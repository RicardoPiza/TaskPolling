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
	public void somaVoto(String data,int id) throws SQLException {
		PreparedStatement stmt;
		stmt=conn.prepareStatement("update voto set "+data+"="+data+"+1 where fk_task_id="+id+"");
		stmt.execute();
	}
	public int retornaVotos(String data,int id) throws SQLException {
		Statement stmt;
		ResultSet rs;
		stmt=conn.createStatement();
		rs=stmt.executeQuery("select "+data+" from voto where fk_task_id="+id+"");
		rs.next();
		return Integer.parseInt(rs.getString(data));
		
	}
}
