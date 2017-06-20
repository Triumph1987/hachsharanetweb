<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="SearchCourses.aspx.cs" Inherits="hachsharanetweb.SearchCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>הכשרה.נט - חיפוש קורסים</title>
<%--    <script src="jquery/SearchJava.js"></script>--%>
    <link href="main/SearchCss.css" rel="stylesheet" />
    <script src="jquery/jquery-3.2.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <form id="form1" runat="server">

    <h1>חיפוש קורסים</h1>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="CourseID" HeaderText="CourseID" ReadOnly="True" SortExpression="CourseID" />
            <asp:BoundField DataField="CourseName" HeaderText="CourseName" ReadOnly="True" SortExpression="CourseName" />
            <asp:BoundField DataField="Source" HeaderText="Source" ReadOnly="True" SortExpression="Source" />
            <asp:CheckBoxField DataField="Approved" HeaderText="Approved" ReadOnly="True" SortExpression="Approved" />
            <asp:BoundField DataField="ManagerFirstName" HeaderText="ManagerFirstName" ReadOnly="True" SortExpression="ManagerFirstName" />
            <asp:BoundField DataField="ManagerLastName" HeaderText="ManagerLastName" ReadOnly="True" SortExpression="ManagerLastName" />
            <asp:BoundField DataField="InstituteID" HeaderText="InstituteID" ReadOnly="True" SortExpression="InstituteID" />
            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
        </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HachsharaNETConnectionString %>" SelectCommand="SearchCourses" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter Name="CourseID" Type="Int32" />
                <asp:Parameter Name="CourseName" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SearchCoursesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:HachsharaNETConnectionString %>" SelectCommand="SearchCourses" SelectCommandType="StoredProcedure">
           <%-- <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="CourseID" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox1" Name="CourseName" PropertyName="Text" Type="String" />
            </SelectParameters>--%>
        </asp:SqlDataSource>




        <asp:GridView ID="GridView2" runat="server"></asp:GridView>


    </form>

</asp:Content>
