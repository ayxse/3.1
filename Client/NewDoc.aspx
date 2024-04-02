<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewDoc.aspx.vb" Inherits="Employee_NewDoc" %>

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
        position :absolute;
        margin-left :25px;
        margin-top :10px;
        font-size :20px;
        font-style :oblique;
        top: 48px;
        left: 47px;
    }
    .lblS2
    {
        position :absolute;
        margin-left :200px;
        margin-top :10px;
        font-size :25px;
        font-style :oblique;
        font-weight:bold;
        color :Teal;
        top: 90px;
        left: 48px;
        border:1px solid #111111;
        width:200px;
        height:30px;
    }
    .lblS3
    {
        position :absolute;
        margin-left :25px;
        margin-top :90px;
        font-size :20px;
        font-style :oblique;
        top: 49px;
        left: 45px;
    }
    .lblS4
    {
        position :absolute ;
        margin-left :25px;
        margin-top :50px;
        font-size :20px;
        font-style :oblique ;
    }
    .lblS5
    {
        position :absolute;
        margin-left :25px;
        margin-top :130px;
        font-size :20px;
        font-style :oblique;
        top: 49px;
        left: 46px;
    }
    .lblS6
    {
        position :absolute ;
        margin-left :520px;
        margin-top :90px;
        font-size :15px;
        color :Red ;
    }
    .txtS1
    {
        position :absolute;
        margin-top :50px;
        margin-left :200px;
        font-size :larger;
        float :right;
        width:200px;
        top: 9px;
        left: 45px;
    }
    .txtS2
    {
        position :absolute ;
        margin-left :200px;
        margin-top :90px;
        width:200px;
    }
    .txtS3
    {
        position :absolute ;
        margin-left :200px;
        margin-top :130px;
        width :200px;
        height :400px;
        font-size :xx-large  ;
        font-family:Gabriola ;
    }
    .txtS4
    {
        position :absolute ;
        margin-left :390px;
        margin-top :50px;
        font-size :larger ;
        width:200px;
    }
    .BtnS1
    {
        position :absolute ;
        margin-left :430px;
        margin-top :90px;
    }
    .BtnS2
    {
        position :absolute;
        margin-top :550px;
        margin-left : 750px;
        height :24px;
        width :100px;
        font-size :larger;
        font-weight :bold;
        top: -22px;
        left: -278px;
    }
    .style3
    {
        position : absolute;
        margin-left : 200px;
        margin-top : 10px;
        font-size : 25px;
        font-style : oblique;
        font-weight: bold;
        color : Teal;
        top: 47px;
        left: 58px;
        border: 1px solid #111111;
        width: 200px;
        height: 30px;
    }
    .style4
    {
        position: absolute;
        top: 107px;
        left: 259px;
        z-index: 1;
        width: 202px;
        height: 21px;
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
            speed: 500,
            advanceDelay: 2000,
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
			<h2> Professor Main Screen </h2>
		</div>
	</div>
	<div id="menu">
		<ul>
            <li class="first" ><a href ="CntHome.aspx">Professor Home</a></li>
            <li>
				<span class="opener">Question Paper<b></b></span>
				<ul>
                    <li><a href="NewDoc.aspx" >New Question Paper</a></li>
					<li><a href="ViewAllDoc.aspx" >View Question Paper</a></li>
					
				
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
					<img src="../images/50.jpg" alt="" />
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
            <span>6</span>
		</div>
	</div>
	<div id="page">
        <asp:Label ID="Label1" runat="server" Text="Professor ID" CssClass ="lblS1"></asp:Label>
        <asp:Label ID="EmpId" runat="server" Text="15" CssClass ="style3"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Attach Paper" CssClass ="lblS3"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Course Name" CssClass ="lblS4 " 
            style="left: 48px; top: 52px; width: 152px; right: 755px"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="Comments" CssClass ="lblS5 "></asp:Label>
        <asp:FileUpload ID="Fu" runat="server" CssClass ="txtS2 " 
            style="left: 56px; top: 56px; width: 327px"/>
        <asp:TextBox ID="Letter" runat="server" TextMode ="MultiLine" 
            CssClass ="txtS3 " 
            style="left: 57px; top: 69px; width: 611px; height: 233px" 
            Font-Names="Times New Roman" ></asp:TextBox>
        <asp:Button ID="Submit" runat="server" Text="Submit" CssClass ="BtnS2 " 
            style="left: 18px; top: -96px" />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style4" 
            DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:IntekConnectionString %>" 
            SelectCommand="SELECT [Name] FROM [Catagory]"></asp:SqlDataSource>
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /> <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
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
