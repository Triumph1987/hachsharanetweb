<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="QuestionsAnswersMosad.aspx.cs" Inherits="hachsharanetweb.QuestionsAnswersMosad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>הכשרה.נט - מענה לשאלות - מוסד</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">


          <h1 class="page-head">יצירת שאלות התאמה</h1>
    <div class="container">
<div class="row">
<div class="col-md-9 ">
<form class="form-horizontal" dir="rtl" runat="server">

<fieldset>
                      <div runat="server" id="Div4" class="form-group">
  <label class="col-md-4 control-label" for="InsIDText">שם מוסד הכשרה</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="InsIDText" runat="server"  name="InsIDText" type="text" placeholder="שם מוסד הכשרה" class="form-control input-md" OnTextChanged="TextBox2_TextChanged" ReadOnly="True"></asp:TextBox>
      </div>

    
  </div>

  
</div>
        <div runat="server" id="Div3" class="form-group">
  <label class="col-md-4 control-label" for="CourseNameText">שם קורס</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
<%--    <asp:TextBox id="TextBox1" runat="server"  name="CourseNameText" type="text" placeholder="שם קורס"  ></asp:TextBox>--%>
     <asp:DropDownList ID="CourseNameDD" runat="server" class="form-control input-md required" Visible="True" Enabled="True" OnSelectedIndexChanged="CourseNameDD_SelectedIndexChanged"></asp:DropDownList>
      </div>

    
  </div>

  
</div>
    


<div class="form-group">
    <label class="col-md-4 control-label" for="QuestionID">מזהה שאלה</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="QuestionID" runat="server"  name="QuestionID" type="text" placeholder="מזהה שאלה" class="form-control input-md required"  Visible="True" ReadOnly="True" OnTextChanged="QuestionID_TextChanged"></asp:TextBox>
      </div>

    
  </div>

  
</div>
    

<div runat="server" id="Div2" class="form-group">
  <label class="col-md-4 control-label" for="QuestionText">שאלה</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="QuestionText" runat="server"  name="QuestionText" type="text" placeholder="שאלה" class="form-control input-md" ReadOnly="True"></asp:TextBox>
      </div>

    
  </div>

  
</div>
 <div runat="server" id="AnswerDiv" class="form-group">
  <label class="col-md-4 control-label" for="QuestionAnswer">תשובה רצויה</label>  
  <div class="col-md-4">
 <div class="input-group">
     <asp:RadioButtonList  style="
    position: relative;" RepeatDirection="Horizontal" ID="QuestionAnswer" runat="server">
             <asp:ListItem Text="כן" Value="TRUE" />
    <asp:ListItem Text="לא" Value="FALSE" />
     </asp:RadioButtonList>
      </div>

    
  </div>

  
</div>

       <div  class="form-group">
  <label class="col-md-5 control-label" ></label>  
  <div class="col-md-5">
      <asp:Button ID="SaveAndMove" runat="server" Text="שמור ועבור לשאלה הבאה" class="btn btn-success" OnClick="SaveAndMove_Click" />
      <asp:Button ID="Previous" runat="server" Text="עבור לשאלה הקודמת" class="btn btn-default" OnClick="Previous_Click" />
     </div>
</div>
    </fieldset>
</form>
    </div>


</div>
   </div>

</asp:Content>
