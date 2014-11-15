<%@ page import="java.util.*" %>
<%@ page import="java.io.*" 
%><%@ page import="java.awt.*"
%><%@ page import="java.awt.image.*"
%><%@ page import="javax.imageio.ImageIO"
%><%@ page import="java.util.*"
%>
<%
Random rdm1=new Random();
Random rdmop=new Random();
//Random rdm2=new Random();
int num1=rdm1.nextInt(10);
int num2=rdm1.nextInt(10);
int num3=rdm1.nextInt(10);
int op1=rdmop.nextInt(2);
int op2=rdmop.nextInt(2);
int res=0;
String mcap;
while(num1==0)
{
	num1=rdm1.nextInt(10);	
	
}
while(num2==0)
{
	num2=rdm1.nextInt(10);
	
}
while(num3==0)
{
	num3=rdm1.nextInt(10);
	
}
while(op1==op2)
{
	op2=rdmop.nextInt(2);
}
out.print(num1);
mcap=Integer.toString(num1);
if(op1==0)
{
	out.print(" + ");

}
else if(op1==1)
{
	out.print(" * ");
	
}
out.print("(");
out.print(num2);

if(op2==0)
{
	out.print(" + ");
	
}
else if(op2==1)
{
	out.print(" * ");
	
}
out.print(num3);


out.print(")");

if(op1==0 && op2==0)
{
	res=num1+(num2+num3);
}
else if(op1==0 && op2==1)
{
	res=num1+(num2*num3);
}
else if(op1==1 && op2==0)
{
	res=num1*(num2+num3);
}
else if(op1==1 && op2==1)
{
	res=num1*(num2*num3);
}

String rstr=Integer.toString(res);
session.setAttribute("key",rstr);
%>

