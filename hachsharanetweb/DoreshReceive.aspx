<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="DoreshReceive.aspx.cs" Inherits="hachsharanetweb.DoreshReceive" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>הכשרה.נט - פרטי דורש עבודה</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
        
      <h1 class="page-head">קליטת דורש עבודה</h1>
    <div class="container">


<form class="form-horizontal" dir="rtl" runat="server">

<fieldset>
    <div class="col-md-12 ">
    <div class="row">
    <div class="form-group">
  <div class="row col-md-4 col-md-offset-5">
 <div class="input-group">
     <label>מספר תעודת זהות</label>
    <asp:TextBox id="IDText" runat="server"  name="IDText" type="text" placeholder="מספר תעודת זהות" class="form-control input-md required"  Visible="True" MaxLength="9"></asp:TextBox>
       <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" 
 ControlToValidate="IDText" ErrorMessage="יש להזין מספרים בלבד" style="color:red" />
      </div>

        </div>

  
</div>
</div>

      
    <div class="row">
              <div  class="form-group">
  <label class="col-md-4 control-label" ></label>  
  <div class="col-md-4">
      <asp:Button href="#" class="btn btn-success" ID="Approve" runat="server" Text="אשר" OnClick="Approve_Click" />
      <asp:Button href="#" class="btn btn-danger" ID="Clean" runat="server" Text="חיפוש חדש" OnClick="Clean_Click" />
  
        </div>


                  </div>
        </div>
          <div id="AfterData" runat="server">
          <div class="row">
              <h2 style="font-size:20px">פרטים אישיים</h2>


            <div class="form-group col-md-5">
 <div class="input-group">
     <label>שם משפחה</label>
    <asp:TextBox id="LastnameText" runat="server"  name="LastnameText" type="text" placeholder="שם משפחה" class="form-control input-md required"  Visible="True" ReadOnly="True"></asp:TextBox>
      </div>

                </div>



                  <div class="form-group col-md-5">

 <div class="input-group">
      <label>שם פרטי</label>
    <asp:TextBox id="FirstnameText" runat="server"  name="FirstnameText" type="text" placeholder="שם פרטי" class="form-control input-md required"  Visible="True" ReadOnly="True"></asp:TextBox>
      </div>

                </div>
          </div>

          <div class="row">
                 <div class="form-group col-md-4" style="margin-right: -105px;">


 <div class="input-group">
      <label>מספר</label>
    <asp:TextBox id="StreetNumText" runat="server"  name="StreetNumText" type="number"  placeholder="מספר" class="form-control input-md required"  Visible="True" ReadOnly="True"></asp:TextBox>
      </div>

                </div>


                  <div class="form-group col-md-4" style="margin-right: 10px;">
 

 <div class="input-group">
      <label>רחוב</label>
    <asp:TextBox id="StreetText" runat="server"  name="StreetText" type="text"  placeholder="רחוב" class="form-control input-md required"  Visible="True" ReadOnly="True"></asp:TextBox>
      </div>

                </div>

                 <div class="form-group col-md-3" style="margin-right: 10px;">
    
 <div class="input-group">
      <label>יישוב</label>
    <asp:TextBox id="CityText" runat="server"  name="CityText" type="text"  placeholder="יישוב" class="form-control input-md required"  Visible="True" ReadOnly="True"></asp:TextBox>
      </div>

                </div>


    </div>
        <div class="row">
            <div class="form-group col-md-5">

 <div class="input-group">
      <label>מין</label>
    <asp:TextBox id="GenderText" runat="server"  name="GenderText" type="text" placeholder="מין" class="form-control input-md required"  Visible="True" ReadOnly="True"></asp:TextBox>
      </div>

                </div>
 
                 <div class="form-group col-md-5">


 <div class="input-group">
      <label>תאריך לידה</label>
    <asp:TextBox id="BirthDateText" runat="server"  name="BirthDateText" type="text" placeholder="תאריך לידה" class="form-control input-md required"  Visible="True" ReadOnly="True"></asp:TextBox>
      </div>

                </div>
            </div>
        <br />
        <br />
      <h2 style="font-size:20px;"> פרטי קורסים</h2>
        <div class="row">
                 <div class="form-group col-md-5">


 <div class="input-group">
      <label>האם סירב לקורס בעבר?</label>
    <asp:TextBox id="CourseRefuseText" runat="server"  name="CourseRefuseText" type="text" placeholder="האם סירב לקורס בעבר?" class="form-control input-md required"  Visible="True"></asp:TextBox>
      </div>

                </div>


    
                 <div class="form-group col-md-5">


 <div class="input-group">
      <label>שיוך למחוז</label>
    <asp:TextBox id="DistrictText" runat="server"  name="DistrictText" type="text" placeholder="שיוך" class="form-control input-md required"  Visible="True" ReadOnly="True"></asp:TextBox>
      </div>

                </div>

             </div>
      <div class="row">
                 <div class="form-group col-md-5">
   

 <div class="input-group">
     <label>תאריך הרצת מנגנון התאמה אחרון</label>
    <asp:TextBox id="DateRunText" runat="server"  name="DateRunText" type="text" placeholder="תאריך הרצת מנגנון התאמה אחרון" class="form-control input-md required"  Visible="True"></asp:TextBox>
      </div>

                </div>


                <div class="form-group col-md-5">
     

 <div class="input-group">
     <label>האם משויך לקורס נוכחי?</label>
    <asp:TextBox id="CourseActiveText" runat="server"  name="CourseActiveText" type="text" placeholder="האם משויך לקורס נוכחי?" class="form-control input-md required"  Visible="True"></asp:TextBox>
      </div>

                </div>


          </div>
        <br />
        <div class="row">
              <div  class="form-group">
  <label class="col-md-4 control-label" ></label>  
  <div class="col-md-9">
            <asp:Button href="#" class="btn btn-success" ID="Button4" runat="server" Text="עדכן פרטים" OnClick="Button4_Click" />
      <asp:Button href="#" class="btn btn-success" ID="Button1" runat="server" Text="עבור למענה על שאלות התאמה" OnClick="Button1_Click" />
              <asp:Button href="#" class="btn" ID="Button3" runat="server" Text="לצפייה בדוח קורסים" OnClick="Button3_Click" />
      <asp:Button href="#" class="btn" ID="Button2" runat="server" Text="לצפייה בפרטים מורחבים בבינה והשמה" OnClick="Button2_Click" />
    
  
        </div>


                  </div>
        </div>

        </div>
        </div>
        </fieldset>

    </form>


   
    </div>










</asp:Content>
