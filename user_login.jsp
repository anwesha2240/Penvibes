<%@ include file="connect.jsp" %>
<%
   PreparedStatement pst=con.prepareStatement("select * from sm_user_info where email=? and password=?");
   pst.setString(1,request.getParameter("email"));
   pst.setString(2,request.getParameter("pass"));
   ResultSet rs=pst.executeQuery();
   if(rs.next())
     {
       session.setAttribute("email",rs.getString(1));
       response.sendRedirect("Userhome.jsp");
     }
    else
    {
%>
<h3 style="text-align:center;"><font color="red">Invalid userid or password</font></h3>

<%@ include file="index.html" %>
<%
    }
    con.close();
%>