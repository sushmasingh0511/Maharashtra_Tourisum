<%@ page language="java" import="java.sql.*"%>
  <!--  %@include  file="dbUtils_kit.jsp"%> --> 
<%

String tour_name=(String)session.getAttribute("PUNE");
String year=request.getParameter("year");
String month=request.getParameter("month");
String day=request.getParameter("day");
String bdate=year+"-"+month+"-"+day;
String name=request.getParameter("name");
String aperson=request.getParameter("num1");
String cperson=request.getParameter("num2");
String contact_no=request.getParameter("mob");
int person = Integer.parseInt(aperson) + Integer.parseInt(cperson);
String amount=request.getParameter("sum");
String email = request.getParameter("email");
java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
out.println(bdate);

if(bdate.equals("2016-03-01"))
{
	response.sendRedirect("recipt1.jsp");
}
else if(bdate.equals("2016-03-08"))
{
	response.sendRedirect("recipt2.jsp");
}
else if(bdate.equals("2016-03-20"))
{
	response.sendRedirect("recipt3.jsp");
}
else if(bdate.equals("2016-03-26"))
{
	response.sendRedirect("recipt4.jsp");
}


session.setAttribute("FNAME",name);
session.setAttribute("PERSON",person);
session.setAttribute("MOBNO",contact_no);
session.setAttribute("EMAIL1",email);
session.setAttribute("AMOUNT",amount);   
session.setAttribute("VDATE",bdate);



%>