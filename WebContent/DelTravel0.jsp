<!--Interface Code to prompt condition value from end user-->

<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>

<HEAD>

	<LINK href="adminstyles.css" type="text/css" rel="stylesheet">


<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>
<script LANGUAGE="Javascript">

function fnShowDetails()
			{
				var frm = document.forms[0];
				var TravelsId = frm.TravelsId.value;
				
				if (TravelsId=='')
				{
					alert("Please select TravelsId to Proceed");
				}else{
					var URL = "ShowTravelsDetails.jsp?TravelsId="+TravelsId;
					fnEmpPopUp(URL,300,400);
				}
			}
<!--			
	function validate()
		{
			var frm = document.forms(0);
			var TravelsId = frm.TravelsId.value;

			if (TravelsId=='')
				{
					alert("Please select TravelsId to Proceed");
				}
				

		}
//-->

</script>
</HEAD>

<BODY class=SC>
<HR>
<B><FONT COLOR="#CC00CC" face='verdana'>Delete Travel </FONT></B>
<HR>
<%
	Integer IAuth =(Integer)session.getAttribute("auth");
	int auth=-1;
	if(IAuth!=null){ auth= IAuth.intValue();}
	System.out.println("===Authentication=="+auth);
if(auth!=0){
	%><P align=center><IMG SRC="Images/error.gif" WIDTH="17" HEIGHT="13" BORDER="0" ALT=""><B><FONT COLOR="red">You are not authorized to access this page</FONT></B></P><%
}
else{
%>
<%

	Connection con;
	ResultSet rs=null;
	Statement stmt=null;
	String Condition = "TravelsId";
	String[] ConValues = new String[2000];
	int ConCount=0,i=0;
	String Query1="";
%>
<FORM Name='DelForm' METHOD=POST ACTION="DelTravel1.jsp" onsubmit="return validate()">
			<CENTER><B><FONT face="verdana"> Select a Travel Id to delete from database </FONT></B></CENTER><BR><BR>
		 <center>
   <TABLE BORDER="0" CELLSPACING="2"  CELLPADDING="2" >
	<TR class=row_title ALIGN="center"> <TH COLSPAN="2"> Delete Travel</TH>
		<TR class=row_odd>
			<TH><%=Condition.replace('`',' ').toUpperCase()%></TH>
			<TD><SELECT NAME="<%=Condition%>">
			<OPTION Value="">Select</OPTION>

<%
	try{
			
			con = Tourpak.ConnectionPool.getConnection();
			stmt =  con.createStatement();

			if(Condition.trim().equalsIgnoreCase("undefined")){
				System.out.println("in if");
				Query1 = "Select * from travelsmaster";
			}
			else{
				System.out.println("in else");
				Query1 = "Select "+Condition+" from travelsmaster";
			}
			String str="";
			System.out.println(Query1);
			rs = stmt.executeQuery(Query1);
			int rCount=0;
				while(rs.next()){
					String x = rs.getString(1);
					ConValues[i]=x;
					%><OPTION Value=<%=ConValues[i]%>><%=ConValues[i]%></OPTION><%
					i++;
				}
		}catch(Exception e){%><%=e%><%}
%>
		</SELECT></TD>
		</TR>
		<TR class =row_odd><TD align=center><Input type='Submit' name='submit' value='Delete'></TD>
		<TD align=center><input type="button" ID='Item' value="ShowDetails" onclick="fnShowDetails()"></TD>
		</TR>
		</TABLE>
</FORM>
</BODY>
<%
}
%>
