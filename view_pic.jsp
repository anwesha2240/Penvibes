<%@ include file="connect.jsp" %>
<%!
   String uimage="";
%>
<%
    String email=(String)session.getAttribute("email");
   PreparedStatement pst=con.prepareStatement("select image from sm_user_info where email=?");
   pst.setString(1,email);
   ResultSet rs=pst.executeQuery();
     if(rs.next())
       uimage=rs.getString(1);
    con.close();
%>
<a href="pic_upload.jsp"><img src="./image/<%=uimage%>" height=30 width=30></img></a>