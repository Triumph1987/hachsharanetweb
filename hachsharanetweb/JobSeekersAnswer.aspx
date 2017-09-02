<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="JobSeekersAnswer.aspx.cs" Inherits="hachsharanetweb.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> הכשרה.נט - מענה על שאלות התאמה</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    
      <h1 class="page-head">מענה על שאלות התאמה</h1>
    <div class="container">
<div class="row">
<div class="col-md-9 ">
<form class="form-horizontal" dir="rtl" runat="server">

<fieldset>
    <div id="EnterDet" runat="server">
    <div class="form-group">
    <label class="col-md-4 control-label" for="JobSIDText">מספר תעודת זהות</label>  
  <div class="col-md-4">
      <div class="input-group">
    <asp:TextBox id="IDText" runat="server"  name="IDText" type="text" placeholder="מספר תעודת זהות" class="form-control input-md required"  Visible="True" MaxLength="9"></asp:TextBox>
                 <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" 
 ControlToValidate="IDText" ErrorMessage="יש להזין מספרים בלבד" style="color:red" />
       </div>
          </div>

        </div>

  

              <div  class="form-group">
  <label class="col-md-4 control-label" ></label>  
  <div class="col-md-4">
      <asp:Button href="#" class="btn btn-success" ID="Approve" runat="server" Text="אשר" OnClick="Approve_Click" />
      <asp:Button href="#" class="btn btn-danger" ID="Clean" runat="server" Text="חיפוש חדש" OnClick="Clean_Click" />
  
        </div>
</div>
        </div>
          <div class="form-group">
    <label class="col-md-4 control-label" for="JobSFullnameText">שם מלא</label>  
  <div class="col-md-4">
        <div class="input-group">
    <asp:TextBox id="JobSFullnameText" runat="server"  name="JobSFullnameText" type="text" placeholder="שם מלא" class="form-control input-md required"  Visible="True" ReadOnly="True"></asp:TextBox>
            </div>
      </div>

        </div>

<div class="form-group">
    <label class="col-md-4 control-label" for="QuestionID">מזהה שאלה</label>  
  <div class="col-md-4">
 <div class="input-group">
    <asp:TextBox id="QuestionID" runat="server"  name="QuestionID" type="text" placeholder="מזהה שאלה" class="form-control input-md required"  Visible="True" ReadOnly="True" OnTextChanged="QuestionID_TextChanged"></asp:TextBox>
      </div>

    
  </div>

  
</div>
    

<div runat="server" id="Div2" class="form-group">
  <label class="col-md-4 control-label" for="QuestionText">שאלה</label>  
  <div class="col-md-4">
 <div class="input-group">
    <asp:TextBox id="QuestionText" runat="server"  name="QuestionText" type="text" placeholder="שאלה" class="form-control input-md" ReadOnly="True"></asp:TextBox>
      </div>

    
  </div>

  
</div>
 <div runat="server" id="AnswerDiv" class="form-group">
  <label class="col-md-4 control-label" for="QuestionAnswer">תשובה</label>  
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
    <br/>
       <asp:Button ID="CheckMatch" runat="server" Text="הרץ מנגנון התאמה" class="btn btn-success" OnClick="CheckMatch_Click" />
  
      </fieldset>
    </form>
      </div>
    </div>


        
    </div>









</asp:Content>
