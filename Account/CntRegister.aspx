<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CntRegister.aspx.vb" Inherits="Account_CntRegister" %>

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
        top: 727px;
        left: 0px;
        width: 200px;
        right: 630px;
    }
    .lblstyle8
    {
        font-size :larger;
        position :inherit;
        margin-left :700px;
        position :absolute;
        top: 684px;
        left: 83px;
        width: 200px;
        color:Red;
    }
    .txtstyle7
    {
        font-size :x-large;
        position :inherit;
        margin-left :400px;
        margin-top :0px;
        position :absolute;
        width:200px;
        height: 33px;
    }
    .lblstyle2
    {
        font-size :x-large;
        position :inherit;
        margin-left :150px;
        margin-top :50px;
        position :absolute;
        width:200px;
        top: 726px;
        left: 0px;
    }
    .lblstyle3
    {
        font-size :x-large;
        position :inherit;
        margin-left :150px;
        margin-top :100px;
        position :absolute;
        width:200px;
        top: 726px;
        left: 0px;
    }
    .lblstyle4
    {
        font-size :x-large;
        position :inherit;
        margin-left :150px;
        margin-top :150px;
        position :absolute;
        width:266px;
        top: 726px;
        left: 0px;
    }
    .lblstyle5
    {
        font-size :x-large;
        position :inherit;
        margin-left :150px;
        margin-top :200px;
        position :absolute;
        width:213px;
        top: 721px;
        left: 0px;
        right: 617px;
    }
    .lblstyle6
    {
        font-size :x-large;
        position :inherit;
        margin-left :150px;
        margin-top :250px;
        position :absolute;
        width:200px;
        top: 720px;
        left: 0px;
    }
    .lblstyle7
    {
        font-size :x-large;
        position :inherit;
        margin-left :150px;
        margin-top :300px;
        position :absolute;
        width:200px;
        top: 729px;
        left: 0px;
    }
    .txtstyle1
    {
        font-size :x-large;
        position :inherit;
        margin-left :400px;
        margin-top :50px;
        position :absolute;
        azimuth:rightwards;
        width:200px;
        height: 33px;
    }
    .txtstyle2
    {
        font-size :x-large;
        position :inherit;
        margin-left :400px;
        margin-top :100px;
        position :absolute;
        width:200px;
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
        top: 723px;
        left: 0px;
        height: 33px;
        bottom: 361px;
    }
    .txtstyle5
    {
        font-size :larger;
        position :inherit;
        margin-left :400px;
        margin-top :250px;
        position :absolute;
        width :200px;
        top: 722px;
        left: 0px;
        height: 33px;
    }
    .txtstyle6
    {
        font-size :x-large;
        position :inherit;
        margin-left :400px;
        margin-top :300px;
        position :absolute;
        width:200px;
        top: 729px;
        left: 0px;
    }
    .btn1
    {
        margin-left :590px;
        position :absolute;
        margin-top :400px;
        top: 728px;
        left: -118px;
        width: 129px;
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
            ControlToValidate="CLogName" CssClass="style4" 
            ErrorMessage="Enter Alphabets Only" ValidationExpression="[ a-z A-Z ]+" 
            
            
            
            style="z-index: 1; position: absolute; top: 805px; left: 926px; height: 32px; width: 192px"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="CName" CssClass="style4" 
            ErrorMessage="Enter Alphabets Only" ValidationExpression="[ a-z A-Z ]+" 
            
            
            
            style="z-index: 1; position: absolute; top: 856px; left: 923px; height: 27px; width: 188px"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="cph" CssClass="style4" 
            ErrorMessage="Enter Digits Only" ValidationExpression="[ 0-9 ]+" 
            
            
            
            style="z-index: 1; position: absolute; top: 1006px; left: 927px; height: 27px; width: 151px"></asp:RegularExpressionValidator>
    </p>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="../Home.aspx">Online QPS</a></h1>
		</div>
		<div id="slogan">
			<h2> Professor's Signup </h2>
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
        <asp:Label ID="lbl1" runat="server" Text ="Login Name" CssClass ="lblstyle1" > </asp:Label>
        <asp:Label ID="empname" runat="server" Text ="Professor Name" CssClass ="lblstyle2" > </asp:Label>
        <asp:Label ID="pass" runat="server" Text ="Password" CssClass ="lblstyle3" > </asp:Label>
        <asp:Label ID="cpass" runat="server" Text ="Confirm Password" 
            CssClass ="lblstyle4" ></asp:Label>
        <asp:Label ID="Label1" runat="server" Text ="Phone Number" 
            CssClass ="lblstyle5" ></asp:Label>
        <asp:Label ID="Label2" runat="server" Text ="E-mail ID" CssClass ="lblstyle6" > </asp:Label>
        <asp:Label ID="Label3" runat="server" Text ="Address" CssClass ="lblstyle7" > </asp:Label>
        <asp:TextBox ID="CLogName" runat ="server" CssClass ="txtstyle7"></asp:TextBox>
        <asp:TextBox ID="CName" runat ="server" CssClass ="txtstyle1"></asp:TextBox>
        <asp:TextBox ID="Cntpass" runat ="server" CssClass ="txtstyle2" TextMode ="Password" ></asp:TextBox>
        <asp:TextBox ID="CntCpass" runat ="server" CssClass ="txtstyle3" TextMode ="Password" ></asp:TextBox>
        <asp:TextBox ID="cph" runat ="server" CssClass ="txtstyle4 " MaxLength="10" 
            Font-Names="Times New Roman"></asp:TextBox>
        <asp:TextBox ID="CemailID" runat ="server" CssClass ="txtstyle5 "></asp:TextBox>
        <asp:TextBox ID="CAddr" runat ="server" CssClass ="txtstyle6" 
            TextMode ="MultiLine" Font-Names="Times New Roman"  ></asp:TextBox>
        <asp:Button ID="signup" runat ="server" CssClass ="btn1" Text="Signup" Font-Size="Larger"  />
        <asp:Label ID="Label4" runat="server" Text ="Incorrect Password" 
            CssClass ="lblstyle8" Visible ="False"></asp:Label>
        <br /><br /> <br /> <br /> <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ControlToValidate="CemailID" CssClass="style4" 
            ErrorMessage="Enter Valid Email-ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            
            
            
            style="z-index: 1; position: absolute; top: 979px; left: 658px; height: 27px; width: 148px"></asp:RegularExpressionValidator>
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
