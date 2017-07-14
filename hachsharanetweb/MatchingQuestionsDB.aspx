<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="MatchingQuestionsDB.aspx.cs" Inherits="hachsharanetweb.MatchingQuestionsDB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>הכשרה.נט - טבלת שאלות התאמה</title>
    <style>
            .mydatagrid
{
	border: solid 2px black;
	min-width: 80%;
        direction:rtl;
}
.header
{
	background-color: #5C1DED;
	font-family: Arial;
	color: White;
	height: 25px;
	text-align: right;
	font-size: 16px;
}

.rows
{
	background-color: #fff;
	font-family: Arial;
	font-size: 14px;
	color: #000;
	min-height: 25px;
	text-align: left;
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
}
.mydatagrid th
{
	padding: 5px;
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
    <form id="form1" runat="server">
        <h1 class="page-head">טבלת שאלות התאמה</h1>
    <asp:GridView ID="GridView1" CssClass="mydatagrid" PagerStyle-CssClass="pager" RowStyle-CssClass="rows" HeaderStyle-CssClass="header" runat="server" AutoGenerateColumns="False" DataKeyNames="qID" DataSourceID="SqlCon1">
        <Columns>
            <asp:BoundField DataField="qID" HeaderText="qID" ReadOnly="True" SortExpression="qID" />
            <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
            <asp:BoundField DataField="QuestionType" HeaderText="QuestionType" SortExpression="QuestionType" />
            <asp:CheckBoxField DataField="QuestionRelevance" HeaderText="QuestionRelevance" SortExpression="QuestionRelevance" />
        </Columns>
        <HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>

<RowStyle CssClass="rows"></RowStyle>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlCon1" runat="server" ConnectionString="<%$ ConnectionStrings:HachsharaNETConnectionString1 %>" SelectCommand="SELECT * FROM [MatchingQuestions]"></asp:SqlDataSource>
    </form>
</asp:Content>
