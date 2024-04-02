<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Alogin.aspx.vb" Inherits="Account_Default" %>

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
    .style2
    {
        margin-left :400px;
        margin-top :0px;
        height :30px;
        width :200px;
        position :absolute;
        top: 336px;
        left: 117px;
    }  
    .style1
    {
        margin-left :250px;
        margin-top :0px;
        height :30px;
        width :200px;
        position :absolute;
        font-size :30px;
        top: 337px;
        left: 118px;
    }  
    .style3
    {
        margin-left :10px;
        margin-top :620px;
        height :30px;
        width :100px;
        position :absolute;
        top: -223px;
        left: 610px;
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
        $('#slider').slidertron({
            viewerSelector: '.viewer',
            indicatorSelector: '.indicator span',
            reelSelector: '.reel',
            slidesSelector: '.slide',
            speed: 1,
            advanceDelay: 10000
        });
    });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">Online QPS </a></h1>
		</div>
		<div id="slogan">
			<h2> Logon to Admin home </h2>
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
				<div class="slide">
                  <img src="../images/11.JPG" />
				</div>
			</div>
		</div>
	</div>
        <br />
        <br />
        <asp:Label ID="label1" Text="Password" CssClass ="style1" runat ="server" >
        </asp:Label> 
        <asp:TextBox ID="ADpass" runat="server" CssClass="style2 " Font-Size ="X-Large" 
            TextMode ="Password"   ></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Login" CssClass ="style3" />
        <br /><br /><br /><br />
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
