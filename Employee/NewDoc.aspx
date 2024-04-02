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
        top: 44px;
        left: 45px;
        right: 763px;
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
        top: 41px;
        left: 44px;
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
        margin-top :50px;
        font-size :20px;
        font-style :oblique ;
    }
    .lblS5
    {
        position :absolute ;
        margin-left :25px;
        margin-top :130px;
        font-size :20px;
        font-style :oblique ;
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
        right: 535px;
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
        position :absolute;
        margin-left :390px;
        margin-top :50px;
        font-size :larger;
        width:200;
        top: 46px;
        left: 69px;
        right: 337px;
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
        height :35px;
        width :136px;
        font-size :larger;
        font-weight :bold;
        top: 110px;
        left: -251px;
    }
    .style3
    {
        position: absolute;
        top: 78px;
        left: -93px;
        width: 144px;
    }
    .style4
    {
        left: 0px;
        top: 0px;
        height: 842px;
    }
    .style5
    {
        position : absolute;
        margin-left : 25px;
        margin-top : 90px;
        font-size : 20px;
        font-style : oblique;
        left: 41px;
        top: 90px;
    }
    .style6
    {
        position: absolute;
        width: 150px;
        top: 82px;
        left: -78px;
    }
    .style7
    {
        position : absolute;
        margin-left : 25px;
        margin-top : 10px;
        font-size : 20px;
        font-style : oblique;
        top: 65px;
        left: 43px;
        right: 732px;
    }
    .style8
    {
        position : absolute;
        margin-left : 200px;
        margin-top : 10px;
        font-size : 25px;
        font-style : oblique;
        font-weight: bold;
        color : Teal;
        top: 62px;
        left: 37px;
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
			<h2> Examiner Main Screen </h2>
		</div>
	</div>
	<div id="menu">
		<ul>
            <li class="first" ><a href ="EmpHome.aspx">Examiner Home</a></li>
            <li>
				<span class="opener">Question Paper<b></b></span>
				<ul>
                    <li><a href="NewDoc.aspx">New Question Paper</a></li>
					<li><a href="ViewAllDoc.aspx">View Question Paper</a></li>
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
					<img src="../images/a1.jpg" alt="" />
				</div>
				<div class="slide">
					<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [Name] FROM [Catagory]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [CntID] FROM [Client]"></asp:SqlDataSource>
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
            <span>6</span>
		</div>
	</div>
	<div id="page" class="style4">
        <asp:Label ID="Label1" runat="server" Text="Examiner ID" CssClass ="style7"></asp:Label>
        <asp:Label ID="EmpId" runat="server" Text="15" CssClass ="style8"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Attach Paper" CssClass ="style5"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Course Type" CssClass ="lblS4 " 
            style="left: 39px; top: 73px"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="Comments" CssClass ="lblS5 " 
            style="left: 40px; top: 110px"></asp:Label>
        <asp:FileUpload ID="Fu" runat="server" CssClass ="txtS2 " 
            
            
            style="bottom: 696px; left: 0px; width: 431px; z-index: 1; position: absolute; top: 92px"/>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass ="txtS1 " 
            DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" 
            style="right: 535px; top: 76px">
        </asp:DropDownList>
        <asp:Label ID="Label6" runat="server" Text="Professor ID" 
            style=" margin-left : 600px; margin-top :48px; right: 282px;" 
            CssClass="style3"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" 
            style=" margin-left : 700px; margin-top :50px; " 
            DataSourceID="SqlDataSource2" DataTextField="CntID" 
            DataValueField="CntID" CssClass="style6" >
        </asp:DropDownList>
        <asp:TextBox ID="Letter" runat="server" TextMode ="MultiLine" 
            CssClass ="txtS3 " 
            style="left: 4px; top: 114px; width: 431px; height: 370px" 
            Font-Names="Times New Roman" ></asp:TextBox>
        <asp:Button ID="Submit" runat="server" Text="Submit" CssClass ="BtnS2 " />
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
