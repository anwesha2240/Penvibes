<%@include file="user_menu.jsp" %>
<%@include file="connect.jsp" %>
<%
try{
String nm=request.getParameter("fn");
PreparedStatement pst1=con.prepareStatement("select * from sm_user_info where name like '"+nm+"%'");
ResultSet rs1=pst1.executeQuery();
while(rs1.next())
{
int f=-1;
String email1=rs1.getString(1);
String name=rs1.getString(3);
String image=rs1.getString(6);
 PreparedStatement pst2=con.prepareStatement("select * from sm_friend where receiver=?");
 pst2.setString(1,email1);
 ResultSet rs2=pst2.executeQuery();
 if(rs2.next())
   f=rs2.getInt(3);
%>
<form action="req_friend.jsp" method=post>
<input type=hidden name=email value="<%=email1%>" >
<img src="./image/<%=image%>" height=50 width=50> 
<%=name%> 
<%
if(f==-1)
{
%>

<input type=submit value="Request for friend">
<%
}
else if(f==0)
{
%>
<font color=red>Request pending</font>
<%
}
else if(f==1)
{
%>
<font color=green>Already Friend</font>
<%
}
%>
</form>
<br><br>
<%
 }
con.close();
}
catch(Exception e){
out.println(e);}
%>

