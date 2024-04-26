<%@include file="connect.jsp" %>
<%
   String email=request.getParameter("email");
   PreparedStatement pst=con.prepareStatement("insert into sm_user_info values(?,?,?,?,?,?)");
   
   
   pst.setString(1,email);
   pst.setString(2,request.getParameter("passwd"));
   pst.setString(3,request.getParameter("uname"));
   pst.setString(4,request.getParameter("dt"));
   pst.setString(5,request.getParameter("tn"));
   pst.setString(6,"dpic.png");
   int t=pst.executeUpdate();
   if(t>0)
   {
     out.println("<h2> :)");
 %>
   <h3>Registered successfully please login</h3>
   <br>
   <br>
   <%@ include file="index.html" %>
<%
    }
    con.close();
%>

