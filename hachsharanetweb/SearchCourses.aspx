<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="SearchCourses.aspx.cs" Inherits="hachsharanetweb.SearchCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>הכשרה.נט - חיפוש קורסים</title>

    <script src="jquery/jquery-3.2.1.min.js"></script>
        <style>
        .mydatagrid
{
	width: 80%;
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

    <h1 class="page-head">חיפוש קורסים</h1>
        <div class="row">

  <div class="col-lg-4" style="left: 35%;right: 50%;">
    <div class="input-group" >
      <span class="input-group-btn">
    <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="חפש" OnClick="Button1_Click" />
          </span>
    <asp:TextBox ID="TextBox1" class="form-control" dir="rtl" runat="server"></asp:TextBox>
        </div><!-- /input-group -->
  </div><!-- /.col-lg-6 -->

            </div>

    <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="CourseID" HeaderText="מזהה קורס" ReadOnly="True" SortExpression="CourseID" />
            <asp:BoundField DataField="CourseName" HeaderText="שם קורס" ReadOnly="True" SortExpression="CourseName" />
            <asp:BoundField DataField="Source" HeaderText="מקור" ReadOnly="True" SortExpression="Source" />
            <asp:CheckBoxField DataField="Approved" HeaderText="מאושר" ReadOnly="True" SortExpression="Approved" />
            <asp:BoundField DataField="ManagerFirstName" HeaderText="שם פרטי מנהל" ReadOnly="True" SortExpression="ManagerFirstName" />
            <asp:BoundField DataField="ManagerLastName" HeaderText="שם משפחה מנהל" ReadOnly="True" SortExpression="ManagerLastName" />
            <asp:BoundField DataField="InstituteID" HeaderText="מזהה מוסד" ReadOnly="True" SortExpression="InstituteID" />
            <asp:BoundField DataField="Name" HeaderText="שם מוסד" ReadOnly="True" SortExpression="Name" />
        </Columns>
        </asp:GridView>--%>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HachsharaNETConnectionString %>" SelectCommand="SearchCourses" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter Name="CourseID" Type="Int32" />
                <asp:Parameter Name="CourseName" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

<%--        <asp:SqlDataSource ID="SearchCoursesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:HachsharaNETConnectionString %>" SelectCommand="SearchCourses" SelectCommandType="StoredProcedure">
           <%-- <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="CourseID" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox1" Name="CourseName" PropertyName="Text" Type="String" />
            </SelectParameters>--%>
<%--        </asp:SqlDataSource>--%>


        <br />
       <div class="col-md-11" style="left: 17%";>
        <asp:GridView ID="GridView2" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager" RowStyle-CssClass="rows" HeaderStyle-CssClass="header" EmptyDataText="לא נמצאו תוצאות" EmptyDataRowStyle-HorizontalAlign="Center" EmptyDataRowStyle-Wrap="False">
           
            <Columns>
               <asp:TemplateField>
  <ItemTemplate>
    <asp:Button ID="AddButton" runat="server" 
      CommandName="AddToCart" 
CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
      Text="לפרטים המלאים" />
  </ItemTemplate> 
</asp:TemplateField>
            </Columns>
<EmptyDataRowStyle HorizontalAlign="Center" Wrap="False"></EmptyDataRowStyle>

<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>

<RowStyle CssClass="rows"></RowStyle>
           
        </asp:GridView>

           </div>
    </form>

</asp:Content>
