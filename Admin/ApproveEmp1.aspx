<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ApproveEmp1.aspx.vb" Inherits="Admin_Approvecnt1" %>

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
    .Imgstyle
    {
        height :120px;
        width :180px;
        margin-left : 750px;
        border-style :double ;
        border-width :4px;
    }
    .txtS1
    {
        position :absolute;
        font-size :x-large;
        margin-left :-670px;
        margin-top :150px;
        top: 672px;
        left: 938px;
        width:200px;
    }
    .txtS2
    {
        position :absolute;
        font-size :x-large;
        margin-left :-670px;
        margin-top :200px;
        width:200px;
    }
    .txtS3
    {
        position :absolute;
        font-size :x-large;
        margin-left :-220px;
        margin-top :200px;
        width:200px;
    }
    .txtS4
    {
        position :absolute;
        font-size :x-large;
        margin-left :-220px;
        margin-top :250px;
        width:200px;
    }
    .txtS5
    {
        position :absolute;
        font-size :x-large;
        margin-left :-670px;
        margin-top :250px;
        width:200px;
        height: 58px;
        bottom: 331px;
    }
    .txtS6
    {
        position :absolute;
        font-size :x-large;
        margin-left :-630px;
        margin-top :400px;
        width:200px;
    }
    .txtS7
    {
        position :absolute;
        font-size :x-large;
        margin-left :-730px;
        margin-top :420px;
        width :200px;
        top: 671px;
        left: 997px;
    }
    .lblS1
    {
        position :absolute ;
        font-size :45px;
        margin-left :80px;
        margin-top :25px;
        text-decoration : underline;
    }
    .lblS2
    {
        position :absolute;
        font-size :x-large;
        margin-left :-870px;
        margin-top :150px;
    }
    .lblS3
    {
        position :absolute;
        font-size :x-large;
        margin-left :-870px;
        margin-top :200px;
    }
    .lblS4
    {
        position :absolute;
        font-size :x-large;
        margin-left :-370px;
        margin-top :200px;
    }
    .lblS5
    {
        position :absolute;
        font-size :x-large;
        margin-left :-370px;
        margin-top :250px;
    }
    .lblS6
    {
        position :absolute;
        font-size :x-large;
        margin-left :-870px;
        margin-top :250px;
        top: 676px;
        left: 943px;
    }
    .lblS7
    {
        position :absolute;
        font-size :25px;
        margin-left :-190px;
        margin-top :135px;
        width: 190px;
        text-align :center;
        font-family :Algerian ;
    }
    
    .lblS8
    {
        position :absolute;
        font-size :x-large;
        margin-left :-850px;
        margin-top :420px;
        top: 679px;
        left: 935px;
    }
    
    .BtnS
    {
        position :absolute;
        top :1123px;
        left:535px;
        width :80px;
        height :35px;
    }
    .Rds
    {
        position :absolute;
        left :73px;
        top :1023px;
        font-size :20px;
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
			<h2> Admin Screen </h2>
		</div>
	</div>
	<div id="menu">
		<ul>
            <li class="first" ><a href ="AdminHome.aspx">Admin Home</a></li>
            <li>
				<span class="opener">Lists<b></b></span>
				<ul>
					<li><a href="AllClients.aspx" >All Professors</a></li>
					<li><a href="AllEmployeeList.aspx" >All Examiners</a></li>
					<li><a href="Categorylists.aspx" >List of Courses</a></li>
                    <li><a href="AllDocumentsList.aspx" >All Course lists </a></li>
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
					<li><a href="ClientApprove.aspx"  >Approve Professors</a></li>
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
        <asp:Label ID="Label7" runat="server" Text="Examiner's Details" CssClass="lblS1"></asp:Label>

        <asp:Image ID="Image1" runat="server" CssClass ="Imgstyle "/>

        <asp:Label ID="Label1" runat="server" Text="Examiner ID" CssClass ="lblS2"></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="" CssClass ="lblS7"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Examiner Name" CssClass ="lblS3 "></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Designation" CssClass ="lblS4 "></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="Department" CssClass ="lblS5 "></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="Address" CssClass ="lblS6 "></asp:Label>
        <asp:TextBox ID="EmpID" runat="server" Enabled ="false" CssClass ="txtS1" ></asp:TextBox>
        <asp:TextBox ID="Name" runat="server" Enabled ="false" CssClass ="txtS2" ></asp:TextBox>
        <asp:TextBox ID="Desg" runat="server" Enabled ="false" CssClass ="txtS3" ></asp:TextBox>
        <asp:TextBox ID="Dept" runat="server" Enabled ="false" CssClass ="txtS4" ></asp:TextBox>
        <asp:TextBox ID="Addr" runat="server" Enabled ="false" CssClass ="txtS5" TextMode ="MultiLine"></asp:TextBox>

        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass ="Rds ">
        <asp:ListItem Text ="Approve" Selected ="True"  ></asp:ListItem>
        <asp:ListItem Text ="Reject" ></asp:ListItem>
        </asp:RadioButtonList>
        <asp:TextBox ID="Res" runat="server" TextMode ="MultiLine" CssClass ="txtS7 " ></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Text="Reason" CssClass ="lblS8 "></asp:Label>
        <asp:Button ID="Submit" runat="server" Text="Submit" CssClass ="BtnS " />


        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

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

