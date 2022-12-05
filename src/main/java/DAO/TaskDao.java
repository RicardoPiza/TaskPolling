package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import beans.Task;
import beans.User;
import beans.Voto;
public class TaskDao {
	private final Connection conn;
	public TaskDao(){
		conn = new Conexao().retornaConexao();
		
	}
	public int selectID() throws SQLException {
		Voto v = new Voto();
		ResultSet rs = null;
	        Statement st;
	        try{
	           st=conn.createStatement();
	           rs=st.executeQuery("select id FROM task ORDER BY id DESC LIMIT 1");
	           rs.next();
	        }catch(Exception e){
	           System.out.println(e.getMessage());
	        }
	        v.setId(rs.getInt("id"));
	        return rs.getInt("id");
	}
	public boolean validarNome(String nome, String user) throws SQLException {
		PreparedStatement stmt;
		ResultSet rs;
			stmt=conn.prepareStatement(
              "select * from task where nome = '"+nome+"' and fk_id_user=(SELECT id from usuarios WHERE email='"+user+"')");
            rs = stmt.executeQuery();
            if(rs.next()) {
            	return false;   
            }
            else {
            	return true;
            }
        }
	public void insertID() throws SQLException {
		int i = selectID();
		Voto v = new Voto();
	        PreparedStatement st;
	        try{
	           st=conn.prepareStatement("insert into voto (fk_task_id,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10) "
	           		+ "values (?,?,?,?,?,?,?,?,?,?,?)");
	           st.setInt(1,i);
	           st.setInt(2, v.getData1());
	           st.setInt(3, v.getData2());
	           st.setInt(4, v.getData3());
	           st.setInt(5, v.getData4());
	           st.setInt(6, v.getData5());
	           st.setInt(7, v.getData6());
	           st.setInt(8, v.getData7());
	           st.setInt(9, v.getData8());
	           st.setInt(10, v.getData9());
	           st.setInt(11, v.getData10());
	           st.execute();
	        }catch(Exception e){
	           System.out.println(e.getMessage());
	        }
	}
	public void inserir(Task t, User u) {
		PreparedStatement stmt;
		try{
            stmt=conn.prepareStatement(
              "insert into task (id,nome,descricao,data1,data2,data3,data4,data5,data6,data7,data8,data9,"
              + "data10,hora1,hora2,hora3,hora4,hora5,hora6,hora7,hora8,hora9,hora10,fk_id_user) "
              + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,"
              + "(SELECT id from usuarios WHERE email='"+u.getEmail()+"'))");
            stmt.setInt(1,t.getId());
            stmt.setString(2,t.getNome());
            stmt.setString(3,t.getDescricao());
            stmt.setString(4,t.getData1());
            stmt.setString(5,t.getData2());
            stmt.setString(6,t.getData3());
            stmt.setString(7,t.getData4());
            stmt.setString(8,t.getData5());
            stmt.setString(9,t.getData6());
            stmt.setString(10,t.getData7());
            stmt.setString(11,t.getData8());
            stmt.setString(12,t.getData9());
            stmt.setString(13,t.getData10());
            stmt.setString(14,t.getHora1());
            stmt.setString(15,t.getHora2());
            stmt.setString(16,t.getHora3());
            stmt.setString(17,t.getHora4());
            stmt.setString(18,t.getHora5());
            stmt.setString(19,t.getHora6());
            stmt.setString(20,t.getHora7());
            stmt.setString(21,t.getHora8());
            stmt.setString(22,t.getHora9());
            stmt.setString(23,t.getHora10());
            stmt.execute();
            stmt.close();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
	}
	public ArrayList<Task> buscarTodos(User u){
        ArrayList<Task> lista = new ArrayList<>();
        ResultSet rs;
        Statement st;
        try{
           st=conn.createStatement();
           rs=st.executeQuery("select * from task where fk_id_user=(SELECT id from usuarios WHERE email='"+u.getEmail()+"')");
           while(rs.next()){
        	   Task t = new Task();
               t.setId(rs.getInt("id"));
               t.setNome(rs.getString("nome"));
               t.setDescricao(rs.getString("descricao"));
               t.setData1(rs.getString("data1"));
               t.setData2(rs.getString("data2"));
               t.setData3(rs.getString("data3"));
               t.setData4(rs.getString("data4"));
               t.setData5(rs.getString("data5"));
               t.setData6(rs.getString("data6"));
               t.setData7(rs.getString("data7"));
               t.setData8(rs.getString("data8"));
               t.setData9(rs.getString("data9"));
               t.setData10(rs.getString("data10"));
               t.setHora1(rs.getString("hora1"));
               t.setHora2(rs.getString("hora2"));
               t.setHora3(rs.getString("hora3"));
               t.setHora4(rs.getString("hora4"));
               t.setHora5(rs.getString("hora5"));
               t.setHora6(rs.getString("hora6"));
               t.setHora7(rs.getString("hora7"));
               t.setHora8(rs.getString("hora8"));
               t.setHora9(rs.getString("hora9"));
               t.setHora10(rs.getString("hora10"));
               lista.add(t);
           }
        }catch(Exception e){
           System.out.println(e.getMessage());
        }
        return lista;
    }
	public void excluir(Task t){
        PreparedStatement stmt;
        try{
            stmt=conn.prepareStatement(
              "delete from task where id=?");
            stmt.setInt(1,t.getId());
            stmt.execute();
            stmt.close();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }
	public void alterar(Task t){
        PreparedStatement stmt;
        try{
            stmt=conn.prepareStatement(
              "update task set nome=?,descricao=?,data1=?,data2=?,data3=?,data4=?,data5=?,"+
              "data6=?,data7=?,data8=?,data9=?,data10=?,hora1=?,hora2=?,hora3=?,hora4=?,hora5=?,"
              + "hora6=?,hora7=?,hora8=?,hora9=?,hora10=? where id=?");
            stmt.setString(1,t.getNome());
            stmt.setString(2,t.getDescricao());
            stmt.setString(3,t.getData1());
            stmt.setString(4,t.getData2());
            stmt.setString(5,t.getData3());
            stmt.setString(6,t.getData4());
            stmt.setString(7,t.getData5());
            stmt.setString(8,t.getData6());
            stmt.setString(9,t.getData7());
            stmt.setString(10,t.getData8());
            stmt.setString(11,t.getData9());
            stmt.setString(12,t.getData10());
            stmt.setString(13,t.getHora1());
            stmt.setString(14,t.getHora2());
            stmt.setString(15,t.getHora3());
            stmt.setString(16,t.getHora4());
            stmt.setString(17,t.getHora5());
            stmt.setString(18,t.getHora6());
            stmt.setString(19,t.getHora7());
            stmt.setString(20,t.getHora8());
            stmt.setString(21,t.getHora9());
            stmt.setString(22,t.getHora10());
            stmt.setInt(23,t.getId());
            stmt.execute();
            stmt.close();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }
	public Task buscarId(Task t){
        ResultSet rs;
        Statement st;
        try{
           st=conn.createStatement();
           rs=st.executeQuery("select * from task "+
                   "where id="+t.getId());
           rs.next();
           t.setId(rs.getInt("id"));
           t.setNome(rs.getString("nome"));
           t.setDescricao(rs.getString("descricao"));
           t.setData1(rs.getString("data1"));
           t.setData2(rs.getString("data2"));
           t.setData3(rs.getString("data3"));
           t.setData4(rs.getString("data4"));
           t.setData5(rs.getString("data5"));
           t.setData6(rs.getString("data6"));
           t.setData7(rs.getString("data7"));
           t.setData8(rs.getString("data8"));
           t.setData9(rs.getString("data9"));
           t.setData10(rs.getString("data10"));
           t.setHora1(rs.getString("hora1"));
           t.setHora2(rs.getString("hora2"));
           t.setHora3(rs.getString("hora3"));
           t.setHora4(rs.getString("hora4"));
           t.setHora5(rs.getString("hora5"));
           t.setHora6(rs.getString("hora6"));
           t.setHora7(rs.getString("hora7"));
           t.setHora8(rs.getString("hora8"));
           t.setHora9(rs.getString("hora9"));
           t.setHora10(rs.getString("hora10"));
        }catch(Exception e){
           System.out.println(e.getMessage());
        }
        return t;
    }
	
}
