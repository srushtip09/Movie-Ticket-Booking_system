<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page	import="java.util.*"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Employee Main Page</title>   
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <%--<link href="themes/default/dream.css" rel="stylesheet" type="text/css"/>--%>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/ie6.css" rel="stylesheet" type="text/css" />
        <%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
        <link href="css/dream.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
        <!--
        .style1 {font-size: 36px}
        -->
        </style>
    </head>
<div id="header">
<div class="row-1">
<div class="fleft"><a href="index.jsp">Cinema <span style="color:red">World</span></a></div>
          <ul>    
            <li><a href="index.jsp"><img src="images/icon1-act.gif" alt="Home Page" /></a></li>
            <li><a href="contact-us.html"><img src="images/icon2-act.gif" alt="Gmail" /></a></li>
            <li><a href="about-us.html"><img src="images/icon3-act.gif" alt="About-us" /></a></li>
          </ul>
        </div>          
    </div>
        <body id="page1">
<!-- START PAGE SOURCE -->
<div class="tail-top">
  <div class="tail-bottom">
    <div id="main">
      <div id="header">
        <div class="row-2">
          <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about-us.html">About</a></li>
            <li><a href="articles.html">Articles</a></li>
            <li><a href="contact-us.html">Contacts</a></li>
          </ul>
        </div>
      </div>
         </div>
      </div></div>
        
<%--<img src="Media/icon.png" alt="Cinema World" border="0" style="position:absolute; left: 35%;top:0px; "/>--%>
<%
        String name = request.getParameter("userid");
	String pass = request.getParameter("pass");
        %>

<table width="100%">
	<tr><td>
		<table><tr><td  valign="top">
			<table id="navigation"  width="230">
				<%--<tr><td><a href="#">Admin</a></td></tr>--%>
                               <tr><td><a href="employeemain.jsp">Update Movie Schedule</a></td></tr>
				<tr><td><a href="customerTranscation.jsp">Customers Transactions</a></td></tr>
				<tr><td><a href="schedule.jsp">Movie Schedule</a></td></tr>
                               
				<tr><td><a href="employeelogin.jsp">Log Out</a></td></tr>
                        </table></td>
                                <td id="databar">
                     <h4><span style="color:white">Welcome Employee </span></h4>
                     <center><p> Update Movie Schedule</p></center>
                     <table cellpadding="25" width="587">
                         <tr><td>
                          <form action="employeetransupdate.jsp" method="post">                 
            <label for="name"><br />
              Movie Name :<br/><br/>
            </label>
            <input name="userid" type="text" id="name"/>
            
            <label for="name"><br /><br/>
              Length: (in minutes)<br/><br/>
            </label>
              <input type="text" id="pass1" name="pass" />
               <br/>
               
               <label for="name"><br/>
                Schedule:<br/><br/>
                </label>
               <input type="text" name="s1" id="d1"/>
                <br/>
                
                <label for="name"><br />
                    Screen Number :<br/><br/>
                     </label>
                    <input type="text" name="s2" id="d2"/>
               <br/>
                
               <label for="name"><br />
                    Theatre :<br/><br/>
                     </label>
                    <input type="text" name="s3" id="d3"/>
               <br/>
               
               <label for="name"><br />
                    City :<br/><br/>
                     </label>
                    <input type="text" name="s4" id="d4"/>
               <br/>
               
               <label for="name"><br />
                    Genre :<br/><br/>
                     </label>
                    <input type="text" name="s5" id="d5"/>
               <br/>
               
                <br/>
                <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Update"  />
               <p>&nbsp;</p>
          </form>
           </td></tr>   
                      </table>
                 <br/>
                 <center><p> Movie Schedule</p></center>
                     <table cellpadding="25" width="587" border="5">
                         <tr>
              <td width="200" height="40"><div align="center" class="style21"><span class="style23"> ID </span></div></td>
              <td width="176"><div align="center" class="style21"><span class="style23">Movie Name </span></div></td>
              <td width="176"><div align="center" class="style21"><span class="style23">Length(minutes)</span></div></td>
              <td width="176"><div align="center" class="style21"><span class="style23">Schedule</span></div></td>
             <td width="176"><div align="center" class="style21"><span class="style23">Screen Number </span></div></td>
             <td width="176"><div align="center" class="style21"><span class="style23">theatre Name </span></div></td>
             <td width="176"><div align="center" class="style21"><span class="style23">Location </span></div></td>
               <td width="176"><div align="center" class="style21"><span class="style23">Genre </span></div></td>
                         <%
                     String a2="",b2="",c2="",d2="",e3="",i41="";
                     int i5,i51,k2;
                     try{
                           String query="SELECT * from movieschedule";
                           Statement st=connection.createStatement();
                           ResultSet rs = st.executeQuery(query);
                           while(rs.next()==true){
                            i5=rs.getInt(1);
                            a2=rs.getString(2);
                            k2=rs.getInt(3);
                            b2=rs.getString(4);
                            i51=rs.getInt(5);
                            i41=rs.getString(6);
                            c2=rs.getString(7);
                            d2=rs.getString(8);
                       %>
                         </tr>
                         <tr>
                             <td><div align="center"><%=i5%></div></td>
               <td><div align="center"><%=a2%></div></td>
               <td><div align="center"><%=k2%></div></td>
               <td><div align="center"><%=b2%></div></td>  
                <td><div align="center"><%=i51%></div></td> 
                 <td><div align="center"><%=i41%></div></td>  
                <td><div align="center"><%=c2%></div></td>  
                <td><div align="center"><%=d2%></div></td>  
                 
                          <%
			 
	  }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
                   </tr> 
                     </table>
                     </td> </tr>
                </table></td></tr></table>
                   
                   
             
</body>
</html>