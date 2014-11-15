
<!-- <form name="form1" method="post" action="form.jsp">
<div align="center">
<input name="Submit" type="submit" value="back"></div>
</form> -->
<div align="center">
<%
try
{
String sest=(String)session.getAttribute("key");
int key=Integer.parseInt(sest);
 int user = (Integer)request.getAttribute("code");  
//int user = (Integer)session.getAttribute("code"); 
//out.print(user);
/* int user = Integer.parseInt(request.getParameter("number")); */
if(key==user)			
{
out.print("Verification success");
}
else{
out.print("You have entered wrong verification code!! <br> Please go back and enter proper value.");
}

}
catch(Exception e)
{
out.print("You have entered wrong verification code!! <br> Please go back and enter proper value.");
}
%>
</div>
