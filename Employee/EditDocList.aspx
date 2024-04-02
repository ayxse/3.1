<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EditDocList.aspx.vb" Inherits="Client_EditDocList" %>

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
    .gdstyle
    {
        margin-top :50px;
        margin-left :50px;
        width :750px ;
        text-align :center ;
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
        function logout() {
            alert("jkvfvgvs")
        }

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
                    <li><a href="NewDoc.aspx" >New Question Paper</a></li>
					<li><a href="#">View Question Paper</a></li>
					<li><a href="#">Edit Question Paper</a></li>
					<li><a href="#">Upload Question Paper</a></li>
				</ul>
			</li>
            <li><a href ="#">Upload Question Paper</a></li>
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
	<div id="page">
        <asp:GridView ID="grid1" runat ="server" CssClass ="gdstyle " 
            AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
            CellPadding="100" DataKeyNames="DocID" DataSourceID="SqlDataSource1" CellSpacing = "100"
            GridLines="Horizontal" Font-Names="Times New Roman">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="DocID" HeaderText="DocID" ReadOnly="True" 
                    SortExpression="DocID" />
                <asp:BoundField DataField="UnID" HeaderText="UnID" 
                    SortExpression="UnID" />
                <asp:BoundField DataField="IDType" HeaderText="IDType" 
                    SortExpression="IDType" />
                <asp:BoundField DataField="DCrtn" HeaderText="DCrtn" 
                    SortExpression="DCrtn" />
                <asp:BoundField DataField="DMOd" HeaderText="DMOd" SortExpression="DMOd" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [DocID], [UnID], [IDType], [DCrtn], [DMOd] FROM [DocFileTab]">
        </asp:SqlDataSource>
    <br class="clearfix" />
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
