<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="SearchCourses.aspx.cs" Inherits="hachsharanetweb.SearchCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>הכשרה.נט - חיפוש קורסים</title>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <form runat="server">
    <h1>חיפוש קורסים</h1>
<div class="row"style="position:relative; top:25px; left:600px; width:1000px">
  <div class="col-md-3">
    <div class="input-group" style="width:280%">
    <div class="input-group-btn"> 
        <asp:Button ID="Button1" runat="server" Text="חפש"  type="button" class="btn btn-default" />
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="caret"></span> <span class="sr-only">פתח תפריט</span> </button> 
        <ul class="dropdown-menu">
            <li dir="rtl"><a href="#">חיפוש חופשי</a></li> 
            <li dir="rtl"><a href="#">חיפוש לפי שם קורס</a></li>
            <li dir="rtl"><a href="#">חיפוש לפי מזהה קורס</a></li>
            </ul>
    </div>
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox>

    </div> </div>
        </div>


    </form>
</asp:Content>
