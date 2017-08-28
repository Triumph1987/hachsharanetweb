<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="hachsharanetweb.CreateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>הכשרה.נט - עדכון ויצירת משתמש</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
   <h1 class="page-head">יצירת משתמש</h1>
    <div class="container">
<div class="row">
<div class="col-md-9 ">
<form class="form-horizontal" dir="rtl" runat="server">

<fieldset>
       <div runat="server" id="Div5" class="form-group">
  <label class="col-md-4 control-label" for="InsIDText">שם פרטי</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="InsIDText" runat="server"  name="InsIDText" type="text" placeholder="שם פרטי" class="form-control input-md" ></asp:TextBox>
      </div>

    
  </div>

  
</div>
<div runat="server" id="Div2" class="form-group">
  <label class="col-md-4 control-label" for="SessionIDText">שם משפחה</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="SessionIDText" runat="server"  name="SessionIDText" type="text" placeholder="שם משפחה" class="form-control input-md"></asp:TextBox>
      </div>

    
  </div>

  
</div>


    <div runat="server" id="Div3" class="form-group">
  <label class="col-md-4 control-label" for="SessionNameText">שם משתמש</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="SessionNameText" runat="server"  name="SessionNameText" type="text" placeholder="שם משתמש" class="form-control input-md" ></asp:TextBox>
      </div>

    
  </div>

  
</div>

    
    <div runat="server" id="Div4" class="form-group">
  <label class="col-md-4 control-label" for="DistrictText">סיסמה</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="DistrictText" runat="server"  name="DistrictText" type="text" placeholder="סוג משתמש" class="form-control input-md" ></asp:TextBox>
      </div>

    
  </div>

  
</div>



        <div runat="server" id="Div6" class="form-group">
  <label class="col-md-4 control-label" for="SessionStatusText">סוג משתמש</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
     <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"  class="form-control input-md"></asp:DropDownList>
     <br />
 
      </div>

    
  </div>

  
</div>



        <div  class="form-group">
  <label class="col-md-4 control-label" ></label>  
  <div class="col-md-4">
      <asp:Button href="#" class="btn btn-success" ID="CreateButton" runat="server" Text="צור משתמש" />
      <asp:Button href="#" class="btn btn-danger" ID="SearchAgain" runat="server" Text="נקה פרטים" />
  
  </div>
</div>
</fieldset>
</form>

    </div>
    </div>
        </div>

</asp:Content>
