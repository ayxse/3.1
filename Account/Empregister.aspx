<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Empregister.aspx.vb" Inherits="Account_Default" %>

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
    .lblstyle1
    {
        font-size :x-large;
        position :inherit;
        margin-left :150px;
        position :absolute;
        top: 731px;
        left: 2px;
        width: 223px;
    }
    .lblstyle8
    {
        font-size :larger;
        position :inherit;
        margin-left :700px;
        position :absolute;
        top: 628px;
        left: 54px;
        width: 223px;
        color:Red;
    }
    .lblstyle9
    {
        font-size:x-large;
        position :inherit;
        margin-left :150px;
        margin-top :400px;
        position :absolute;
        top: 716px;
        left: 1px;
        width: 223px;
    }
    .txtstyle7
    {
        font-size :x-large ;
        position :inherit ;
        margin-left :400px;
        margin-top :0px;
        position :absolute ;
        width:200px;
    }
    .lblstyle2
    {
        font-size :x-large;
        position :inherit;
        margin-left :150px;
        margin-top :50px;
        position :absolute;
        top: 728px;
        left: 0px;
    }
    .lblstyle3
    {
        font-size :x-large ;
        position :inherit ;
        margin-left :150px;
        margin-top :100px;
        position :absolute ;
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
        font-size :x-large;
        position :inherit;
        margin-left :150px;
        margin-top :300px;
        position :absolute;
        top: 744px;
        left: 0px;
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
        top: 728px;
        left: -3px;
        height: 33px;
    }
    .txtstyle3
    {
        font-size :x-large;
        position :inherit;
        margin-left :400px;
        margin-top :150px;
        position :absolute;
        width:200px;
        top: 728px;
        left: -3px;
        height: 33px;
    }
    .txtstyle4
    {
        font-size :larger;
        position :inherit;
        margin-left :400px;
        margin-top :200px;
        position :absolute;
        width :200px;
        height: 23px;
    }
    .txtstyle5
    {
        font-size :larger;
        position :inherit;
        margin-left :400px;
        margin-top :250px;
        position :absolute;
        width :200px;
        height: 23px;
    }
    .txtstyle6
    {
        font-size :x-large;
        position :inherit;
        margin-left :400px;
        margin-top :300px;
        position :absolute;
        width:200px;
        top: 728px;
        left: 0px;
        height: 58px;
    }
    .btn1
    {
        margin-left :590px;
        position :absolute;
        margin-top :450px;
        top: 666px;
        left: 42px;
    }
    .phstyle
    {
        margin-left :400px;
        position :absolute;
        margin-top :400px;
        top: 723px;
        left: 2px;
        width: 219px;
        right: 359px;
    }
    .style1
    {
        font-size : x-large;
        position : inherit;
        margin-left : 400px;
        margin-top : 0px;
        position : absolute;
        width: 200px;
        right: 380px;
        top: 728px;
    }
    .style2
    {
        font-size : x-large;
        position : inherit;
        margin-left : 400px;
        margin-top : 50px;
        position : absolute;
        azimuth: rightwards;
        width: 200px;
        right: 380px;
        height: 33px;
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Name] FROM [Desg]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Name] FROM [Dept]"></asp:SqlDataSource>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="EmpName" CssClass="style4" 
            ErrorMessage="Enter Alphabets Only" ValidationExpression="[ a-z A-Z ]+" 
            
            
            style="z-index: 1; position: absolute; top: 858px; left: 877px; width: 202px"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="LogName" CssClass="style4" 
            ErrorMessage="Enter Alphabets Only" ValidationExpression="[ a-z A-Z ]+" 
            
            
            style="z-index: 1; position: absolute; top: 807px; left: 878px; width: 188px"></asp:RegularExpressionValidator>
    </p>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="../Home.aspx">Online QPS</a></h1>
		</div>
		<div id="slogan">
			<h2> Panel of Examiner's Signup </h2>
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
        <asp:Label ID="name" runat="server" Text ="Login Name" CssClass ="lblstyle1" > </asp:Label>
        <asp:Label ID="emname" runat="server" Text ="Examiner Name" CssClass ="lblstyle2" > </asp:Label>
        <asp:Label ID="pass" runat="server" Text ="Password" CssClass ="lblstyle3" > </asp:Label>
        <asp:Label ID="Cpass" runat="server" Text ="Confirm Password" 
            CssClass ="lblstyle4" ></asp:Label>
        <asp:Label ID="Label1" runat="server" Text ="Designation" CssClass ="lblstyle5" > </asp:Label>
        <asp:Label ID="Label2" runat="server" Text ="Department" CssClass ="lblstyle6" > </asp:Label>
        <asp:Label ID="Label3" runat="server" Text ="Address" CssClass ="lblstyle7" > </asp:Label>
        <asp:TextBox ID="LogName" runat ="server" CssClass ="style1"></asp:TextBox>
        <asp:TextBox ID="EmpName" runat ="server" CssClass ="style2"></asp:TextBox>
        <asp:TextBox ID="Empass" runat ="server" CssClass ="txtstyle2" TextMode ="Password" ></asp:TextBox>
        <asp:TextBox ID="EmCpass" runat ="server" CssClass ="txtstyle3" TextMode ="Password" ></asp:TextBox>
        <asp:DropDownList ID="Drop1" runat ="server" CssClass ="txtstyle4 " 
            DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" 
            Font-Names="Times New Roman"  >
        </asp:DropDownList>
        <asp:DropDownList ID="Drop2" runat ="server" CssClass ="txtstyle5 " 
            DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" 
            Font-Names="Times New Roman" > 
        </asp:DropDownList>
        <asp:TextBox ID="addr" runat ="server" CssClass ="txtstyle6" 
            TextMode ="MultiLine" Font-Names="Times New Roman"  ></asp:TextBox>
        <asp:Button ID="signup" runat ="server" CssClass ="btn1" Text="Signup" Font-Size="Larger"  />
        <asp:Label ID="Label4" runat="server" Text ="Incorrect password" CssClass ="lblstyle8" Visible ="false"> </asp:Label>
        <asp:Label ID="Label5" runat="server" Text ="Photo" CssClass ="lblstyle9"> </asp:Label>
        <asp:FileUpload ID="Ph" runat="server" CssClass ="phstyle" />
        <br /><br /> <br /> <br /> <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
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
