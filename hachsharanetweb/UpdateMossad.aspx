<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="UpdateMossad.aspx.cs" Inherits="hachsharanetweb.UpdateMossad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <title>הכשרה.נט - עדכון מוסד</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <h1 class="page-head">עדכון מוסד</h1>
    <div class="container">
<div class="row">
<div class="col-md-9 ">
<form class="form-horizontal" dir="rtl" runat="server">

<fieldset>
       <div runat="server" id="Div5" class="form-group">
  <label class="col-md-4 control-label" for="InsIDText">מזהה מוסד</label>  
  <div class="col-md-4">
 <div class="input-group">

    <asp:TextBox id="InsIDText" runat="server"  name="InsIDText" type="text" placeholder="מזהה מוסד" class="form-control input-md" ReadOnly="True"></asp:TextBox>
          
      </div>

    
  </div>

  
</div>
<div runat="server" id="Div2" class="form-group">
  <label class="col-md-4 control-label" for="InstText">שם מוסד</label>  
  <div class="col-md-4">
 <div class="input-group">
    <asp:TextBox id="InstText" runat="server"  name="InstText" type="text" placeholder="שם מוסד" class="form-control input-md"></asp:TextBox>
      </div>

    
  </div>

  
</div>
    <div runat="server" id="AnswerDiv" class="form-group">
  <label class="col-md-4 control-label" for="ApprovedInst">האם המוסד מאושר?</label>  
  <div class="col-md-4">
 <div class="input-group">
     <asp:RadioButtonList  style="
    position: relative;" RepeatDirection="Horizontal" ID="ApprovedInst" runat="server">
             <asp:ListItem Text="כן" Value="TRUE" />
    <asp:ListItem Text="לא" Value="FALSE" />
     </asp:RadioButtonList>
      </div>

    
  </div>

  
</div>




        <div  class="form-group">
  <label class="col-md-4 control-label" ></label>  
  <div class="col-md-4">
      <asp:Button href="#" class="btn btn-success" ID="CreateButton" runat="server" Text="צור מוסד" />
      <asp:Button href="#" class="btn btn-danger" ID="SearchAgain" runat="server" Text="נקה פרטים" />
  
  </div>
</div>
</fieldset>
</form>

    </div>
    </div>
        </div>

</asp:Content>
