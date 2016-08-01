<%@page import="java.sql.Statement"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%
  //userid, str, end, intr, dot, dy, nop, status_, tcost, key_
    
    String sk = request.getParameter("key");
    String ti = request.getParameter("totoalcost");
    String s = "CONFIRMED";
    
    Connection con = DbConnector.getConnection();
    Statement st = con.createStatement();
    int i = st.executeUpdate("update plan set tcost ='" + ti + "', status_='"+s+"' where key_ = '"+sk+"' ");
    
    if(i!=0){
    response.sendRedirect("adminpage.jsp?Updated sucess..!");
            }else{
    response.sendRedirect("adminpage.jsp?Updated fails..!");
    }
    
    

%>