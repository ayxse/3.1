<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ViewDoc.aspx.vb" Inherits="Employee_ViewDoc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"  runat ="server"  >
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Online QPS</title>
<style type ="text/css" >
    #form1
    {
        max-height :5000px;
    }
    .style2
    {
        margin-left :1200px;
        margin-top :1px;
    }
    .lblS1
    {
        position :absolute;
        margin-left :25px;
        margin-top :10px;
        font-size :20px;
        font-style :oblique;
        top: -68px;
        left: 34px;
    }
    .lblS2
    {
        position :absolute;
        margin-left :25px;
        margin-top :50px;
        font-size :20px;
        font-style :oblique;
        z-index: 1;
        left: 31px;
        top: -36px;
    }
    .lblS3
    {
        position :absolute;
        margin-left :25px;
        margin-top :90px;
        font-size :20px;
        font-style :oblique;
        top: -7px;
        left: 33px;
    }
    .lblS4
    {
        position :absolute ;
        margin-left :25px;
        margin-top :320px;
        font-size :20px;
        font-style :oblique ;
    }
    .txtS1
    {
        position :absolute;
        margin-left :180px;
        margin-top :10px;
        font-size :35px;
        font-family :Gabriola;
        color :Teal;
        width:200px;
        top: -72px;
        left: 38px;
    }
    .txtS2
    {
        position :absolute ;
        margin-top :90px;
        margin-left :180px;
        width :200px;
        height :200px;
        font-family:Gabriola;
        font-size :30px;
        font-weight :bold;
    }
    .txtS3
    {
        position :absolute;
        margin-left :180px;
        margin-top :50px;
        font-size :25px;
        font-weight :bolder;
        font-family :Gabriola;
        width:200px;
        top: -40px;
        left: 36px;
    }
    .TreeS
    {
        margin-top :320px;
        margin-left :200px;
    }
    .style3
    {
        position: absolute;
        top: -489px;
        left: 147px;
        z-index: 1;
        width: 661px;
        height: 365px;
    }
    .style4
    {
        left: 80px;
        top: -67px;
        height: 852px;
    }
    .style5
    {
        position : absolute;
        margin-left : 180px;
        margin-top : 50px;
        font-size : 25px;
        font-weight : bolder;
        font-family : Gabriola;
        width: 200px;
        top: 74px;
        left: 50px;
    }
    .style6
    {
        position: absolute;
        top: 74px;
        left: 496px;
        z-index: 1;
    }
    .style7
    {
        position: absolute;
        top: 131px;
        left: 497px;
        z-index: 1;
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
            speed: 'slow',
            advanceDelay: 4000
        });

    });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <a href="../Home.aspx" class="style2 ">Logout</a>
    </p>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">Online QPS</a></h1>
		</div>
		<div id="slogan">
			<h2> Examiner Main Screen </h2>
		</div>
	</div>
	<div id="menu">
		<ul>
            <li class="first" ><a href ="EmpHome.aspx">Employee Home</a></li>
            <li>
				<span class="opener">Question Paper<b></b></span>
				<ul>
                    <li><a href="NewDoc.aspx" >New Question Paper</a></li>
					<li><a href="ViewAllDoc.aspx" >View Question Paper</a></li>
					<li><a href="EditDoc.aspx">Edit Question Paper</a></li>
			
				</ul>
			</li>
            
            <li class="last">
				<span class="opener">Exit<b></b></span>
				<ul>
					<li><a href="../Home.aspx" >Logout</a></li>
				</ul>
			</li>
		</ul>
		<br class="clearfix" />
	</div>
	<div id="slider">
		<div class="viewer">
			<div class="reel">
				<div class="slide">
					<img src="../images/50.jpg" alt="" />
                 				</div>
				<div class="slide">
					<img src="../images/51.jpg" alt="" />
&nbsp;</div>
				<div class="slide">
					<img src="../images/52.jpg" alt="" />
				</div>
				<div class="slide">
					<img src="../images/53.jpg" alt="" />
				</div>
				<div class="slide">
					<img src="../images/54.jpg" alt="" />
				</div>
			</div>
		</div>
		<div class="indicator" style="left: -26px; top: -47px">
			<span>1</span>
			<span>2</span>
			<span>3</span>
			<span>4</span>
			<span>5</span>
		</div>
	</div>
	<div id="page" class="style4">
        <asp:Label ID="DocumentID" runat="server" Text="Examiner ID" CssClass ="lblS1 " 
            style="left: 45px; top: 65px"></asp:Label>
        <asp:Label ID="LDocID" runat="server" Text="Label" CssClass ="txtS1 " 
            style="left: 48px; top: 64px"></asp:Label>
        <asp:TextBox ID="content" runat="server" CssClass ="viewer" 
            TextMode ="MultiLine" Enabled ="false" Height="189px" 
            style="z-index: 1; position: absolute; top: 238px; left: 68px" 
            Font-Names="Times New Roman" ></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Course Name" CssClass ="lblS2 " 
            style="left: 41px; top: 77px"></asp:Label>
        <asp:Label ID="Emplbl" runat="server" Text="Label" CssClass="style6"></asp:Label>
        <asp:Label ID="DocType" runat="server" Text="" CssClass ="style5"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Comments" CssClass="lblS3 " 
            style="left: 41px; top: 94px"></asp:Label>
        <asp:Label ID="DocDate" runat="server" 
                        Text="Label" CssClass="style7"></asp:Label>
		<br class="clearfix" /> 
	</div>
	<div id="page-bottom">
		<div id="page-bottom-content">
					<p>
				<strong> </strong> <asp:Image ID="Image1" 
                    runat="server" CssClass="style3" />
                
			</p>
		</div>
		<br class="clearfix" />
	</div>
</div>
<div id="footer">
	Copyright (c) 2018-2019 OnlineQuestionpaper.com. All rights reserved
</div>
</form>
</body>
</html>
