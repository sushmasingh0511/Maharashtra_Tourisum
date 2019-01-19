<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>

<HTML>
    <HEAD>

    <script LANGUAGE="Javascript" SRC="admin/Images/validate.js"></script>

    <LINK href="adminstyles.css" type="text/css" rel="stylesheet">
    <script LANGUAGE="Javascript" SRC="admin/Images/calender.js"></script>
    <script LANGUAGE="Javascript" >
		function ChkMandatoryField(F,T){
			var val= F.value;
			if(val==""){alert(T+" is mandatory");return false;}
		}
		function ChkNumField(F,T){
			var val = F.value;
			if(isNaN(val)==true||val==""){alert("Please enter numbers for "+T);return false;}
		}
		function ChkAlphaNumericField(F,T){
			var val = F.value;
			var pattern = /^([a-zA-Z0-9]{1,250})$/;
			if(!(pattern.test(val)==true)){alert("Please enter alphabets or numbers for "+T);return false;}
		}
		function ChkAlphaField(F,T){
			var val = F.value;
			var pattern = /^([a-zA-Z ]{1,250})$/;
			if(!(pattern.test(val)==true)){alert("Please enter text for "+T);return false;}
		}
		function ChkEmailField(F,T){
			var val = F.value;
			var pattern = /^([a-zA-Z0-9\_\.]{4,25})$/;
			if(!(pattern.test(val)==true)){alert("Please enter valid email for "+T);return false;}
		}
		function ChkDateField(F,T)
		{
			var val = F.value;
		    var pattern = /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/;
		    if(!(pattern.test(val)==true)){alert("Please enter valid date format (yyyy-mm-dd) for "+T);return false;}
		}
		function validate()
		{
			var frm = document.forms(0);
			if(ChkMandatoryField(frm.Travels,'Travels Name')==false) return false;
			if(ChkMandatoryField(frm.Location,'Location')==false) return false;
			if(ChkAlphaField(frm.Location,'Location')==false) return false;
			if(ChkMandatoryField(frm.Address,'Address')==false) return false;
			if(ChkMandatoryField(frm.AgentName,'Agent Name')==false) return false;
			if(ChkMandatoryField(frm.PhoneNumber,'Phone Number')==false) return false;
			if(ChkNumField(frm.PhoneNumber,'Phone Number')==false) return false;
		}
	</script>
	</HEAD>
	<Body class=SC>
<HR>
<B><FONT COLOR="#CC00CC" face='verdana'>Add New Travel</FONT></B>
<HR>	
<%
	Integer IAuth =(Integer)session.getAttribute("auth");
	int auth=0;
	if(IAuth!=null){ auth= IAuth.intValue();}
	System.out.println("===Authentication=="+auth);
if(auth!=0){
	%><P align=center><IMG SRC="admin/Images/error.gif" WIDTH="17" HEIGHT="13" BORDER="0" ALT=""><B><FONT COLOR="red">You are not authorized to access this page</FONT></B></P><%
}
else{
%>
<FORM ACTION="AddTravels1.jsp" onsubmit="return validate()">
	<center>
   <TABLE BORDER="0" CELLSPACING="2"  CELLPADDING="2" >
	   <TR class=row_title  ALIGN="center">
	   <TH COLSPAN="2"> Add New Travel </TH>
		<tr class="row_odd">
			<td>Travels Name<FONT COLOR="red">*</FONT></td>
				<TD><Input type=text name='Travels' value=''></TD>
		</TR>
		<tr class="row_even">
			<td>Location<FONT COLOR="red">*</FONT></td>
				<td><SELECT NAME="Location" class="ListBox">
				<option value="Pune">Pune</option>
				<option value="Mumbai">Mumbai</option>
				<option value="Kolhapur">Kolhapur</option>
				<option value="Nashik">Nashik </option>
				<option value="Nagar">Nagar</option>
			</select>
		</td>
		</tr>
		<tr class="row_odd">
			<td>Address<FONT COLOR="red">*</FONT></td>
				<TD><textarea name=Address></textarea></TD>
		</TR>
		<tr class="row_even">
			<td>Agent Name<FONT COLOR="red">*</FONT></td>
				<TD><Input type=text name='AgentName' value=''></TD>
		</TR>
		<tr class="row_odd">
			<td>Phone Number<FONT COLOR="red">*</FONT></td>
				<TD><Input type=text name='PhoneNumber' value=''></TD>
		</TR>
		<TR><TH><INPUT TYPE="submit" value='Submit'></TH><TH><INPUT TYPE="reset" value='Clear'></TH></TR>
	</TABLE>
	<H6 align=center>Fields with <FONT SIZE="" COLOR="red">*</FONT> are mandatory </H6>
	</FORM>
	</BODY>

<%}%>