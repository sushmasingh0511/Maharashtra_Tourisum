<%@ page language="java" import="java.sql.*"%>
   
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

if(bdate.equals("2016-03-04"))
{
	response.sendRedirect("recipt1_mum.jsp");
}
else if(bdate.equals("2016-03-11"))
{
	response.sendRedirect("recipt2_mum.jsp");
}
else if(bdate.equals("2016-03-23"))
{
	response.sendRedirect("recipt3_mum.jsp");
}
else if(bdate.equals("2016-03-29"))
{
	response.sendRedirect("recipt4_mum.jsp");
}


session.setAttribute("FNAME",name);
session.setAttribute("PERSON",person);
session.setAttribute("MOBNO",contact_no);
session.setAttribute("EMAIL1",email);
session.setAttribute("AMOUNT",amount);   
session.setAttribute("VDATE",bdate);



%>