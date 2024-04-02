<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Newcat.aspx.vb" Inherits="Admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"  runat ="server"  >
<meta name="description" content="" />
<meta name="keywords" content="" />
<title> Online QPS</title>
<style type ="text/css" >
    #form1
    {
        margin-left :0;
        max-height :5000px;
    }
    .style2
    {
        margin-left :1185px;
        margin-top :1px;
    }
    .lblstyle1
    {
        font-size :x-large ;
        position :inherit ;
        margin-left :300px;
        margin-top :-30px;
        position :absolute ;
    }
    .lblstyle2
    {
        font-size :x-large;
        position :inherit;
        margin-left :150px;
        margin-top :50px;
        position :absolute;
        top: 673px;
        left: 0px;
    }
    .lblstyle3
    {
        font-size :x-large;
        position :inherit;
        margin-left :150px;
        margin-top :100px;
        position :absolute;
        top: 673px;
        left: 2px;
    }
    .lblstyle4
    {
        font-size :x-large ;
        position :inherit ;
        margin-left :150px;
        margin-top :150px;
        position :absolute ;
    }
    .lblstyle5
    {
        font-size :x-large ;
        position :inherit ;
        margin-left :150px;
        margin-top :200px;
        position :absolute ;
    }
    .lblstyle6
    {
        font-size :x-large ;
        position :inherit ;
        margin-left :150px;
        margin-top :250px;
        position :absolute ;
    }
    .lblstyle7
    {
        font-size :x-large ;
        position :inherit ;
        margin-left :150px;
        margin-top :300px;
        position :absolute ;
    }
    .txtstyle1
    {
        font-size :x-large ;
        position :inherit ;
        margin-left :400px;
        margin-top :50px;
        position :absolute ;
        azimuth:rightwards ;
        width:200px;
    }
    .txtstyle2
    {
        font-size :x-large;
        position :inherit;
        margin-left :400px;
        margin-top :100px;
        position :absolute;
        width:200px;
        height: 58px;
        top: 674px;
        left: -4px;
    }
    .txtstyle3
    {
        font-size :x-large ;
        position :inherit ;
        margin-left :400px;
        margin-top :150px;
        position :absolute ;
        width:200px;
    }
    .txtstyle4
    {
        font-size :larger  ;
        position :inherit ;
        margin-left :400px;
        margin-top :200px;
        position :absolute ;
        width :200px;
    }
    .txtstyle5
    {
        font-size :larger ;
        position :inherit ;
        margin-left :400px;
        margin-top :250px;
        position :absolute ;
        width :200px;
    }
    .txtstyle6
    {
        font-size :x-large ;
        position :inherit ;
        margin-left :400px;
        margin-top :300px;
        position :absolute ;
        width:200px;
    }
    .btn1
    {
        margin-left :550px;
        position :absolute;
        margin-top :200px;
        width :100px;
        top: 673px;
        left: -152px;
    }
    .style4
    {
        position: absolute;
        top: 826px;
        left: 921px;
        z-index: 1;
        height: 24px;
        width: 188px;
    }
    .style5
    {
        font-size : x-large;
        position : inherit;
        margin-left : 400px;
        margin-top : 50px;
        position : absolute;
        azimuth: rightwards;
        width: 200px;
        height: 33px;
        top: 673px;
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
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="DocType" CssClass="style4" 
            ErrorMessage="Enter Alphabets Only" ValidationExpression="[ a-z A-Z ]+"></asp:RegularExpressionValidator>
        <a href="../Home.aspx" class="style2 ">Logout</a> 
    </p>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">Online QPS</a></h1>
		</div>
		<div id="slogan">
			<h2> New Course </h2>
		</div>
	</div>
	<div id="menu">
		<ul>
            <li class="first" ><a href ="AdminHome.aspx">Admin Home</a></li>
            <li>
				<span class="opener">Lists<b></b></span>
				<ul>
					<li><a href="AllClients.aspx" >All Professor</a></li>
					<li><a href="AllEmployeeList.aspx" >All Examiner</a></li>
					<li><a href="Categorylists.aspx" >List of Courses</a></li>
                    <li><a href="AllDocumentsList.aspx" >All Document lists </a></li>
                    <li><a href="DepartmentLists.aspx" >Department lists </a></li>
                    <li><a href="DesigantionLists.aspx" >Designation Lists</a></li>
				</ul>
			</li>
            <li>
				<span class="opener">Create<b></b></span>
				<ul>
					<li><a href="Newdept.aspx" >Department</a></li>
					<li><a href="Newdesg.aspx" >Designation</a></li>
					<li><a href="Newcat.aspx" >Course Name</a></li>
				</ul>
			</li>
            <li>
				<span class="opener">Approvals<b></b></span>
				<ul>
					<li><a href="ClientApprove.aspx"  >Approve Professor</a></li>
					<li><a href="Approveemp.aspx" >Approve Examiners</a></li>
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
				</div>
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
		<div class="indicator">
			<span>1</span>
			<span>2</span>
			<span>3</span>
			<span>4</span>
			<span>5</span>
		</div>
	</div>
    <div>
        <br />
        <br />
        <asp:Label ID="empid" runat="server" Text ="Course Name" CssClass ="lblstyle2" > </asp:Label>
        <asp:Label ID="empname" runat="server" Text ="Description" CssClass ="lblstyle3" > </asp:Label>
        <asp:TextBox ID="DocType" runat ="server" CssClass ="style5" ></asp:TextBox>
        <asp:TextBox ID="Dremark" runat ="server" CssClass ="txtstyle2" TextMode="MultiLine" ></asp:TextBox>
        <asp:Button ID="signup" runat ="server" CssClass ="btn1" Text="Create" Font-Size="Larger"  />
        <br /><br /> <br /> <br /> <br /><br /><br /><br /><br /><br />
    </div>
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


