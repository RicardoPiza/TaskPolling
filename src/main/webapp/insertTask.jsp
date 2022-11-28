<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.Task" %>
<%@ page import="DAO.TaskDao" %>
<%
	Task t = new Task();
	TaskDao td = new TaskDao();
	String task = (String) request.getParameter("nomeTask");
	String descricao = (String) request.getParameter("descricao");
	String data1 = (String) request.getParameter("data1");
	String data2 = (String) request.getParameter("data2");
	String data3 = (String) request.getParameter("data3");
	String data4 = (String) request.getParameter("data4");
	String data5 = (String) request.getParameter("data5");
	String data6 = (String) request.getParameter("data6");
	String data7 = (String) request.getParameter("data7");
	String data8 = (String) request.getParameter("data8");
	String data9 = (String) request.getParameter("data9");
	String data10 = (String) request.getParameter("data10");
	String hora1 = (String) request.getParameter("hora1");
	String hora2 = (String) request.getParameter("hora2");
	String hora3 = (String) request.getParameter("hora3");
	String hora4 = (String) request.getParameter("hora4");
	String hora5 = (String) request.getParameter("hora5");
	String hora6 = (String) request.getParameter("hora6");
	String hora7 = (String) request.getParameter("hora7");
	String hora8 = (String) request.getParameter("hora8");
	String hora9 = (String) request.getParameter("hora9");
	String hora10 = (String) request.getParameter("hora10");
	if(task!=null && descricao!= null && !task.isEmpty() && !descricao.isEmpty()){
		t.setNome(task);
		t.setDescricao(descricao);
		t.setData1(data1);
		t.setData2(data2);
		t.setData3(data3);
		t.setData4(data4);
		t.setData5(data5);
		t.setData6(data6);
		t.setData7(data7);
		t.setData8(data8);
		t.setData9(data9);
		t.setData10(data10);
		t.setHora1(hora1);
		t.setHora2(hora2);
		t.setHora3(hora3);
		t.setHora4(hora4);
		t.setHora5(hora5);
		t.setHora6(hora6);
		t.setHora7(hora7);
		t.setHora8(hora8);
		t.setHora9(hora9);
		t.setHora10(hora10);
		td.inserir(t);
		%>
		<script>
			alert('Task salva');
			window.location.replace("index.jsp");
		</script>
	<%
	}

%>