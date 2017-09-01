<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Resultshatamarep.aspx.cs" Inherits="hachsharanetweb.Resultshatamarep" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>
        הכשרה.נט - דו"ח התאמות
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
    <h1 class="page-head">תוצאות התאמה - דני דן</h1>
    <form runat="server">
        <div class="row">
            <div class="col-md-12">
         <table class="mydatagrid" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder3_GridView1" style="border-collapse:collapse;">
		<tbody><tr class="header">
			<th scope="col">מידת התאמה</th><th scope="col">מוסד</th><th scope="col">שם קורס</th><th scope="col">מזהה קורס</th>
		</tr><tr class="rows">
			<span class="aspNetDisabled"></span><td>עומד בדרישות הקורס</td><td>טכניון</td><td>ניתוח מערכות מידע</td><td>112</td>
		</tr><tr class="rows">
			<span class="aspNetDisabled"></span><td>92%</td><td>טכניון</td><td>עקרונות הנדל"ן</td><td>233</td>
		</tr><tr class="rows">
			<span class="aspNetDisabled"></span><td>81%</td><td>שנקר</td><td>הנדסת טילים אורגנית</td><td>43</td>
		</tr><tr class="rows">
			<span class="aspNetDisabled"></span><td>לא מתאים</td><td>מכללת רופין</td><td>רתך מקצועי</td><td>55</td>
		</tr><tr class="rows">
			<span class="aspNetDisabled"></span><td>לא מתאים</td><td>מאסטר שף</td><td>אמנות האפייה</td><td>533</td>
	
		</tr>
	</tbody></table>
                </div>
        </div>
        <br/>
        <br />
        <div class="row">
        <div class="col-md-2 col-md-offset-5">
    <asp:Button href="#" class="btn btn-success" ID="Results" runat="server" Text="עבור למסך שיבוץ לקורס" />
            </div>
            </div>
       
        </form>

</asp:Content>
