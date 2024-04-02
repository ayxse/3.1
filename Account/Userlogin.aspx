<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Userlogin.aspx.vb" Inherits="Account_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta name="description" content="" />
<meta name="keywords" content="" />
<title> Online QPS</title>
<style type ="text/css" >
    #form1
    {
        margin-left :85px;
        max-height :5000px;
    }
    .txt1
    {
        margin-left :220px;
        margin-top :60px;
        height :30px;
        width :200px;
        position :absolute;
        top: 275px;
        left: 20px;
    }
    .lbl1
    {
        margin-left :60px;
        margin-top :60px;
        height :30px;
        width :200px;
        position :absolute;
        top: 274px;
        left: 20px;
    }  
    .txt2
    {
        margin-left :220px;
        margin-top :130px;
        height :30px;
        width :200px;
        position :absolute;
        top: 257px;
        left: 21px;
    }
    .lbl2
    {
        margin-left :60px;
        margin-top :130px;
        height :30px;
        width :200px;
        position :absolute;
        top: 260px;
        left: 22px;
    }  
    .btn1
    {
        margin-left :-190px;
        margin-top :600px;
        height :30px;
        width :100px;
        position :absolute;
        top: -153px;
        left: 532px;
    } 
    .txt3
    {
        margin-left :660px;
        margin-top :60px;
        height :30px;
        width :200px;
        position :absolute;
        top: 270px;
        left: -16px;
    }
    .lbl3
    {
        margin-left :500px;
        margin-top :60px;
        height :30px;
        width :200px;
        position :absolute;
        top: 270px;
        left: 11px;
    }  
    .txt4
    {
        margin-left :660px;
        margin-top :130px;
        height :30px;
        width :200px;
        position :absolute;
        top: 253px;
        left: -18px;
    }
    .lbl4
    {
        margin-left :500px;
        margin-top :130px;
        height :30px;
        width :200px;
        position :absolute;
        top: 255px;
        left: 12px;
    }  
    .btn2
    {
        margin-left :250px;
        margin-top :600px;
        height :30px;
        width :100px;
        position :absolute;
        top: -154px;
        left: 490px;
    } 
    </style>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="../style.css" />
<script type="text/javascript" src="../jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="../jquery.dropotron-1.0.js"></script>
<script type="text/javascript" src="../jquery.slidertron-1.1.js"></script>
<script type="text/javascript">
    $(function () {
        $('#menu > ul').dropotron({
            mode: 'fade',
            globalOffsetY: 11,
            offsetY: -15
        });
        
    });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="../Home.aspx">Online QPS</a></h1>
		</div>
		<div id="slogan">
			<h2></h2>
		</div>
	</div>
	<div id="menu">
		<ul>
			<li class="first" ><a href="../Home.aspx">Home</a></li>
			<li><a href="../Courses.aspx">Courses</a></li>
			<li><a href="../About.aspx">About</a></li>
			<li><a href="../Contact.aspx">Contact</a></li>
		</ul>
		<br class="clearfix" />
	</div>
	<div id="slider">
		<div class="viewer">
			<div class="reel">
				
			</div>
		</div>
	</div>
                   <asp:Label ID="lbl1" runat="server" CssClass ="lbl2" Font-Size="X-Large" > Password </asp:Label>
                  <asp:TextBox ID ="EPassword" runat="server" CssClass ="txt2 " 
            TextMode ="Password" Font-Size="X-Large " TabIndex="2" ></asp:TextBox>
                  <asp:Label ID="Label1" runat="server" CssClass ="lbl1" Font-Size="X-Large" > Examiner Id </asp:Label>
                  <asp:TextBox ID ="ELOgID" runat="server" CssClass ="txt1" 
            Font-Size="X-Large " TabIndex="1" ></asp:TextBox>
				  <asp:Button ID="Button1" runat="server" Text="Login" CssClass ="btn1" 
            TabIndex="3" />
                  <asp:Label ID="Label2" runat="server" CssClass ="lbl4" Font-Size="X-Large" > Password </asp:Label>
                  <asp:TextBox ID ="Cpassword" runat="server" CssClass ="txt4 " 
            TextMode ="Password" Font-Size="X-Large " TabIndex="5" ></asp:TextBox>
                  <asp:Label ID="Label3" runat="server" CssClass ="lbl3" Font-Size="X-Large" > Professor Id </asp:Label>
                  <asp:TextBox ID ="CLogID" runat="server" CssClass ="txt3" 
            Font-Size="X-Large " TabIndex="4" ></asp:TextBox>
				  <asp:Button ID="Button2" runat="server" Text="Login" CssClass ="btn2" 
            TabIndex="6" />
                  &nbsp;<br /><br /><br /><br /><br /><br /><br /><br />
        <br />
          <div id="page-bottom">
		
		<br class="clearfix" />
	</div>
</div>
<div id="footer">
	Copyright (c) 2018-2019 OnlineQuestionpaper.com. All rights reserved
</div>
 </form> 
 </body> 
 </html>