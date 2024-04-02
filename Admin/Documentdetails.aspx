<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Documentdetails.aspx.vb" Inherits="Admin_Documentdetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"  runat ="server"  >
<meta name="description" content="" />
<meta name="keywords" content="" />
<title> Online QPS</title>
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
        position :absolute ;
        margin-left :25px;
        margin-top :10px;
        font-size :20px;
        font-style :oblique ;
    }
    .lblS2
    {
        position :absolute ;
        margin-left :25px;
        margin-top :50px;
        font-size :20px;
        font-style :oblique ;
    }
    .lblS3
    {
        position :absolute ;
        margin-left :25px;
        margin-top :90px;
        font-size :20px;
        font-style :oblique ;
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
        position :absolute ;
        margin-left :180px;
        margin-top :10px;
        font-size :35px;
        font-family :Gabriola ;
        font-weight :bolder ;
        color :Teal ;
        width:200px;
    }
    .txtS2
    {
        position :absolute ;
        margin-top :90px;
        margin-left :180px;
        width :750px;
        height :200px;
        font-family:Matura MT Script Capitals;
        font-size :30px;
        font-weight :bold;
        width:200px;
    }
    .txtS3
    {
        position :absolute ;
        margin-left :180px;
        margin-top :50px;
        font-size :25px;
        font-weight :bolder ;
        font-family :Gabriola ;
        width:200px;
    }
    .TreeS
    {
        margin-top :320px;
        margin-left :200px;
    }
</style>
<meta http-equiv="co ntent-type" content="text/html; charset=utf-8" />
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
			<h2> Examiner's Approval </h2>
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
					<li><a href="Approveemp.aspx" >Approve Examiner</a></li>
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
	<div id="page">
        <asp:Label ID="DocumentID" runat="server" Text="Course ID" CssClass ="lblS1 "></asp:Label>
        <asp:Label ID="LDocID" runat="server" Text="Label" CssClass ="txtS1 "></asp:Label>
        <asp:TextBox ID="content" runat="server" CssClass ="txtS2" TextMode ="MultiLine"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Course Name" CssClass ="lblS2 "></asp:Label>
        <asp:Label ID="DocType" runat="server" Text="" CssClass ="txtS3"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Content" CssClass="lblS3 "></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Uploaded Question Paper" CssClass ="lblS4 "></asp:Label>
        <asp:TreeView ID="TV" runat="server" CssClass ="TreeS "></asp:TreeView>
		<br class="clearfix" /> 
	</div>
	</div>
	<div id="page-bottom">
		<br class="clearfix" />
	</div>
</div>
    </form>
<div id="footer">
	Copyright (c) 2018-2019 OnlineQuestionpaper.com. All rights reserved
</div>
</body>
</html>
