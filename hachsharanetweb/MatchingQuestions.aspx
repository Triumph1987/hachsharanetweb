<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="MatchingQuestions.aspx.cs" Inherits="hachsharanetweb.MatchingQuestions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title> הכשרה.נט - יצירת שאלות התאמה</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
      <h1 class="page-head">יצירת שאלות התאמה</h1>
    <div class="container">
<div class="row">
<div class="col-md-9 ">
<form class="form-horizontal" dir="rtl" runat="server">

<fieldset>


<div class="form-group">
    <label class="col-md-4 control-label" for="QuestionID">מזהה שאלה</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="QuestionID" runat="server"  name="QuestionID" type="text" placeholder="מזהה שאלה" class="form-control input-md required"  Visible="True"></asp:TextBox>
      </div>

    
  </div>

  
</div>

<%--    <div runat="server" id="Div1" class="form-group">
  <label class="col-md-4 control-label" for="CourseNameText">שם קורס</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="CourseNameText" runat="server"  name="CourseNameText" type="text" placeholder="שם קורס" class="form-control input-md required" Visible="True" Enabled="True" ReadOnly="True"></asp:TextBox>
      </div>

    
  </div>

  
</div>
    
                  <div runat="server" id="Div5" class="form-group">
  <label class="col-md-4 control-label" for="InsIDText">שם מוסד הכשרה</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="InsIDText" runat="server"  name="InsIDText" type="text" placeholder="שם מוסד הכשרה" class="form-control input-md" ></asp:TextBox>
      </div>

    
  </div>

  
</div>--%>
<div runat="server" id="Div2" class="form-group">
  <label class="col-md-4 control-label" for="QuestionText">שאלה</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="QuestionText" runat="server"  name="QuestionText" type="text" placeholder="שאלה" class="form-control input-md"></asp:TextBox>
      </div>

    
  </div>

  
</div>


    <div runat="server" id="Div3" class="form-group">
  <label class="col-md-4 control-label" for="QuestionTypeText">סוג שאלה</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="QuestionTypeText" runat="server"  name="QuestionTypeText" type="text" placeholder="סוג שאלה" class="form-control input-md" ></asp:TextBox>
      </div>

    
  </div>

  
</div>

    
    <div runat="server" id="Div4" class="form-group">
  <label class="col-md-4 control-label" for="ReleventQuestion">האם השאלה רלוונטית?</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="ReleventQuestion" runat="server"  name="ReleventQuestion" type="text" placeholder="האם השאלה רלוונטית?" class="form-control input-md" ></asp:TextBox>
      </div>

    
  </div>

  
</div>



    

        <div  class="form-group">
  <label class="col-md-4 control-label" ></label>  
  <div class="col-md-4">
      <asp:Button href="#" class="btn btn-success" ID="CreateButton" runat="server" Text="צור מחזור" OnClick="Create_Click" />
      <asp:Button href="#" class="btn btn-danger" ID="SearchAgain" runat="server" Text="חיפוש קורס חדש" OnClick="Clean_Click" />
  
  </div>
</div>
</fieldset>
</form>



</div>



</div>
   </div>

           






</asp:Content>
