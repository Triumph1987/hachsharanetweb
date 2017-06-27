<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="hachsharanetweb.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>הכשרה.נט - דף הבית</title>
    <link href="main/Homepagecss.css" rel="stylesheet" />
    <script src="Homepage.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<h1 class="page-head" dir="rtl">שולחן עבודה</h1>
    <div class="container">
    	<div class="row">
			<div class="col-md-5">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">דורשי עבודה תחת אחריותי</h3>
						<div class="pull-left">
							<span class="clickable filter" data-toggle="tooltip" title="הצג פילטור" data-container="body">
								<i class="glyphicon glyphicon-filter"></i>
							</span>
						</div>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="פלטר מחזורי קורס" />
					</div>
					<table class="table table-hover" id="dev-table">
						<thead>
							<tr>	
								<th>שם משפחה</th>
                                	<th>שם פרטי</th>
                                <th>תעודת זהות</th>
														</tr>
						</thead>
						<tbody>
							<tr>
                                								<td>וייס</td>
								<td>רם</td>
								<td>33939399</td>
                                														</tr>
							<tr>
                                								<td>הטמן</td>
                                								<td>ניב</td>
								<td>30125454</td>

								
							</tr>
							<tr>
                                								<td>גל</td>
                                								<td>גילי</td>
								<td>054212135</td>


								
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-md-5">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">מחזורים פתוחים לרישום</h3>
						<div class="pull-left">
							<span class="clickable filter" data-toggle="tooltip" title="הצג פילטור" data-container="body">
								<i class="glyphicon glyphicon-filter"></i>
							</span>
						</div>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="task-table-filter" data-action="filter" data-filters="#task-table" placeholder="פלטר דורשי עבודה" />
					</div>
					<table class="table table-hover" id="task-table">
						<thead>
							<tr>
								<th>מזהה קורס</th>
								<th>שם קורס</th>
                                <th>שם מחזור</th>
								<th>סגירת רישום</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>123</td>
								<td>ניתוח מערכות</td>
                                <td>2017</td>
								<td>10.10.2017</td>
							</tr>
							<tr>
							<td>456</td>
								<td>ניתוח מערכות</td>
                                <td>2018</td>
								<td>10.10.2018</td>
							</tr>
							<tr>
								<td>876</td>
								<td>ניהול משק בית</td>
								<td>1 - 2017</td>
								<td>10.02.2017</td>
							</tr>
							<tr>
								<td>4</td>
								<td>ניהול מוצר</td>
								<td>חיפה 16</td>
								<td>10.10.2007</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

