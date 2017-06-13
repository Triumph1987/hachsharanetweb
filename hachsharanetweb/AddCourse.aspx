﻿<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="hachsharanetweb.AddCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>הכשרה.נט - יצירת/ עדכון קורס</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
       
   <div class="container">
<div class="row">
<div class="col-md-9 ">
<form class="form-horizontal" dir="rtl" runat="server">
<fieldset>

<!-- Form Name -->
<legend dir="rtl">יצירת/ עדכון קורס</legend>

<!-- Text input-->




<div class="form-group">
  <label class="col-md-4 control-label" for="CourseIDText">מזהה קורס</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="CourseIDText" runat="server"  name="CourseIDText" type="text" placeholder="מזהה קורס" class="form-control input-md required"  Visible="True"></asp:TextBox>
      </div>

    
  </div>

  
</div>
    <div  class="form-group">
  <label class="col-md-4 control-label" ></label>  
  <div class="col-md-4">
      <asp:Button href="#" class="btn btn-success" ID="Approve" runat="server" Text="אשר" OnClick="Approve_Click" />
      <asp:Button href="#" class="btn btn-danger" ID="Clean" runat="server" Text="נקה" />
  
  </div>
</div>


    
    
<div runat="server" id="Div2" class="form-group">
  <label class="col-md-4 control-label" for="CourseNameText">שם קורס</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="CourseNameText" runat="server"  name="CourseNameText" type="text" placeholder="שם קורס" class="form-control input-md required" Visible="True"></asp:TextBox>
      </div>

    
  </div>

  
</div>


    
<div runat="server" id="Div3" class="form-group">
  <label class="col-md-4 control-label" for="SourceText">מקור קורס</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="SourceText" runat="server"  name="SourceText" type="text" placeholder="מקור קורס" class="form-control input-md"></asp:TextBox>
      </div>

    
  </div>

  
</div>

    
<div runat="server" id="Div4" class="form-group">
  <label class="col-md-4 control-label" for="ApprovedText">האם הקורס מאושר?</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="ApprovedText" runat="server"  name="ApprovedText" type="text" placeholder="האם הקורס מאושר?" class="form-control input-md" Visible="True"></asp:TextBox>
      </div>

    
  </div>

  
</div>

    <div runat="server" id="Div5" class="form-group">
  <label class="col-md-4 control-label" for="FirstNameText">שם פרטי</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="FirstNameText" runat="server"  name="FirstNameText" type="text" placeholder="שם פרטי" class="form-control input-md" Visible="True"></asp:TextBox>
      </div>

    
  </div>

  
</div>

    <div runat="server" id="Div6" class="form-group">
  <label class="col-md-4 control-label" for="LastNameText">שם משפחה</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="LastNameText" runat="server"  name="LastNameText" type="text" placeholder="שם משפחה" class="form-control input-md" Visible="True"></asp:TextBox>
      </div>

    
  </div>

  
</div>

        <div runat="server" id="Div7" class="form-group">
  <label class="col-md-4 control-label" for="InstitueIDText">מזהה מוסד</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="InstitueIDText" runat="server"  name="InstitueIDText" type="text" placeholder="מזהה מוסד" class="form-control input-md" Visible="True"></asp:TextBox>
      </div>
      </div>
            </div>
</fieldset>
</form>



</div>



</div>
   </div>


</asp:Content>
