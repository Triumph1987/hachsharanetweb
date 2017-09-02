<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="OpenCourseRep.aspx.cs" Inherits="hachsharanetweb.OpenCourseRep" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <title>
        הכשרה.נט - דו"ח מחזורי קורסים פתוחים לרישום
    </title>
      <style>
            .mydatagrid
{
	border: solid 2px black;
	min-width: 80%;
        text-align:right;
        float:right;
}
.header
{
	background-color: #5C1DED;
	font-family: Arial;
	color: White;
	height: 25px;
	font-size: 16px;
    text-align:right;
}

.rows
{
	background-color: #fff;
	font-family: Arial;
	font-size: 14px;
	color: #000;
	min-height: 25px;
	text-align: right;
}
.rows:hover
{
	background-color: #5badff;
	color: #fff;
}

.mydatagrid a /** FOR THE PAGING ICONS  **/
{
	background-color: Transparent;
	padding: 5px 5px 5px 5px;
	color: #fff;
	text-decoration: none;
	font-weight: bold;
}

.mydatagrid a:hover /** FOR THE PAGING ICONS  HOVER STYLES**/
{
	background-color: #000;
	color: #fff;
}
.mydatagrid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
{
	background-color: #fff;
	color: #000;
	padding: 5px 5px 5px 5px;
}
.pager
{
	background-color: #5badff;
	font-family: Arial;
	color: White;
	height: 30px;
	text-align: left;
}

.mydatagrid td
{
	padding: 5px;
    direction:rtl;
}
.mydatagrid th
{
	padding: 5px;
    text-align:right;
}
.centerediv {
  position: absolute;
  top: 50%;
  left: 50%;
  /* bring your own prefixes */
  transform: translate(-50%, -50%);
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <h1 class="page-head"> דו"ח מחזורי קורסים פתוחים לרישום נכון לתאריך הנוכחי</h1>
    <form runat="server">
        <div class="row">
            <div class="col-md-12">
         <table class="mydatagrid" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder3_GridView1" style="border-collapse:collapse;">
		<tbody><tr class="header">
			<th scope="col">תאריך פתיחה</th><th scope="col">סטטוס הרשמה</th><th scope="col">שם מחזור</th><th scope="col">מזהה מחזור</th><th scope="col">שם קורס</th><th scope="col">שם מוסד</th>
		</tr><tr class="rows">
			<span class="aspNetDisabled"></span><td>10.02.2018</td><td>פתוח</td><td>ניתוח מערכות 19</td><td>232</td><td>ניתוח מערכות מידע</td><td>טכניון</td>
		</tr><tr class="rows">
			<span class="aspNetDisabled"></span><td>15.03.2018</td><td>פתוח</td><td>ג'אווה 32</td><td>233</td><td>תכנות ג'אווה</td><td>אוניברסיטת תל אביב</td>
		</tr><tr class="rows">
			<span class="aspNetDisabled"></span><td>15.04.2018</td><td>פתוח</td><td>מעונות יום 12</td><td>322</td><td>ניהול מעונות יום</td><td>טכניון</td>

	
		</tr>
	</tbody></table>
                </div>
        </div>
     
        </form>

</asp:Content>
