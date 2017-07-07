<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="AddSession.aspx.cs" Inherits="hachsharanetweb.AddSession" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <title>הכשרה.נט - יצירת מחזור קורס</title>
        <script>
$(function() {
    $( "#<%= StartDateText.ClientID %>" ).datepicker();
});
</script>

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

      <h1 class="page-head">יצירת מחזור קורס</h1>
    <div class="container">
<div class="row">
<div class="col-md-9 ">
<form class="form-horizontal" dir="rtl" runat="server">

<fieldset>


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

    <div runat="server" id="Div1" class="form-group">
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

    <div  class="form-group">
  <label class="col-md-4 control-label" ></label>  
  <div class="col-md-4">
      <asp:Button href="#" class="btn btn-success" ID="Approve" runat="server" Text="אשר" OnClick="Approve_Click" />
      <asp:Button href="#" class="btn btn-danger" ID="Clean" runat="server" Text="נקה" OnClick="Clean_Click" />
  
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

  
</div>
<div runat="server" id="Div2" class="form-group">
  <label class="col-md-4 control-label" for="SessionIDText">מזהה מחזור</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="SessionIDText" runat="server"  name="SessionIDText" type="text" placeholder="מזהה מחזור" class="form-control input-md"></asp:TextBox>
      </div>

    
  </div>

  
</div>


    <div runat="server" id="Div3" class="form-group">
  <label class="col-md-4 control-label" for="SessionNameText">שם מחזור קורס</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="SessionNameText" runat="server"  name="SessionNameText" type="text" placeholder="שם מחזור קורס" class="form-control input-md" ></asp:TextBox>
      </div>

    
  </div>

  
</div>

    
    <div runat="server" id="Div4" class="form-group">
  <label class="col-md-4 control-label" for="DistrictText">אזור</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="DistrictText" runat="server"  name="DistrictText" type="text" placeholder="אזור" class="form-control input-md" ></asp:TextBox>
      </div>

    
  </div>

  
</div>



        <div runat="server" id="Div6" class="form-group">
  <label class="col-md-4 control-label" for="SessionStatusText">סטטוס קורס</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
     <asp:DropDownList ID="SessionStatusText" runat="server" DataSourceID="SqlDataSource1" DataTextField="Status" DataValueField="Status" class="form-control input-md"></asp:DropDownList>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HachsharaNETConnectionString %>" SelectCommand="SELECT [Status] FROM [Statuses]"></asp:SqlDataSource>
     <br />
    <%--<asp:TextBox id="SessionStatusText" runat="server"  name="SessionStatusText" type="text" placeholder="סטטוס קורס" class="form-control input-md"></asp:TextBox>--%>
      </div>

    
  </div>

  
</div>



    <div runat="server" id="Div7" class="form-group">
  <label class="col-md-4 control-label" for="StartDateText">תאריך התחלה</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="StartDateText" runat="server"  name="StartDateText"  type="text" placeholder="תאריך התחלה" class="form-control input-md" Visible="True"></asp:TextBox>
      </div>

    
  </div>

  
</div>

        <div runat="server" id="Div8" class="form-group">
  <label class="col-md-4 control-label" for="EndDateText">תאריך סיום</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="EndDateText" runat="server"  name="EndDateText" type="date" placeholder="תאריך סיום" class="form-control input-md" Visible="True" ></asp:TextBox>
      </div>
      </div>
            </div>


        <div runat="server" id="Div9" class="form-group">
  <label class="col-md-4 control-label" for="MinParticipText">מספר משתתפים מינימלי</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="MinParticipText" runat="server"  name="MinParticipText" type="number" placeholder="מספר משתתפים מינימלי" class="form-control input-md" Visible="True"></asp:TextBox>
      </div>
      </div>
            </div>

       <div runat="server" id="Div10" class="form-group">
  <label class="col-md-4 control-label" for="MaxParticipText">מספר משתתפים מקסימלי</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
    <asp:TextBox id="MaxParticipText" runat="server"  name="MaxParticipText" type="number" placeholder="מספר משתתפים מקסימלי" class="form-control input-md" Visible="True"></asp:TextBox>
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
