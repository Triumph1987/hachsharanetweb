<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="CreateReports.aspx.cs" Inherits="hachsharanetweb.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>הכשרה.נט - מאגר דוחות</title>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <link href="main/Reports.css" rel="stylesheet" />
       <h1 class="page-head">מאגר דוחות</h1>
    <form id="form1" runat="server">
            <div class="row">

  <div class="col-lg-4" style="left: 35%;right: 50%;">
    <div class="input-group" >
      <span class="input-group-btn">
    <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="חפש"  />
          </span>
    <asp:TextBox ID="TextBox1" class="form-control" dir="rtl" runat="server"></asp:TextBox>
        </div><!-- /input-group -->
  </div><!-- /.col-lg-6 -->

            </div>
        </form>
<div class="container">
          <!--small cards-->
        <div class="row">
            <div class="col-md-4">
        		<div class="card">
                    <div class="card-content">
                    	<div class="card-header-blue">
                           <h2 class="card-heading">דוח קורסים פתוחים לרישום</h2>
                       	</div>
                       	<div class="card-body">
                     	  <p class="card-p" style="direction:rtl">
                               הדוח מראה את כל הקורסים הפתוחים מרישום מהתאריך הנוכחי והלאה שבסטטוס "פתוח"
                                
                            </p>
                     	</div>
                     	
                     	<nav class="nav-tabs">
                     		<ul class="nav nav-pills pull-left">
                                <li class="card-action"><a href="/OpenCourseRep.aspx">צור דוח</a></li>
                                
                            </ul>
                     		
                     	</nav>
                     		
                    </div>
                </div>
                </div>
            <div class="col-md-4">
                        		<div class="card">
                    <div class="card-content">
                    	<div class="card-header-blue">
                           <h2 class="card-heading">דוח שאלות התאמה</h2>
                       	</div>
                       	<div class="card-body">
                     	  <p class="card-p" style="direction:rtl">
                              הדוח מראה את כל שאלות ההתאמה שנמצאות במערכת הכשרה.נט
                            </p>
                     	</div>
                     	
                     	<nav class="nav-tabs">
                     		<ul class="nav nav-pills pull-left">
                                <li class="card-action"><a href="/MatchingQuestionsDB.aspx">צור דוח</a></li>
                               
                            </ul>
                     		
                     	</nav>
                     		
                    </div>
                </div>
                </div>
           <div class="col-md-4">

                        		<div class="card">
                    <div class="card-content">
                    	<div class="card-header-blue">
                           <h2 class="card-heading">דוח התאמות לקורסים</h2>
                       	</div>
                       	<div class="card-body">
                     	  <p class="card-p" style="direction:rtl">
                                הדוח מראה את כל ההתאמות לקורסים פר דורש עבודה. יש להזין את פרטי דורש העבודה לפני הפקת הדוח
                                
                            </p>
                     	</div>
                     	
                     	<nav class="nav-tabs">
                     		<ul class="nav nav-pills pull-left">
                                <li class="card-action"><a href="/Resultshatamarep.aspx">צור דוח</a></li>

                            </ul>
                     		
                     	</nav>
                     		
                    </div>
                </div>
               </div>
           	</div>
        <div class="row">
            <div class="col-md-4">
        		<div class="card">
                    <div class="card-content">
                    	<div class="card-header-blue">
                           <h2 class="card-heading">דוח מוסדות הכשרה</h2>
                       	</div>
                       	<div class="card-body">
                     	  <p class="card-p" style="direction:rtl">
                              הדוח מראה את כל מוסדות ההכשרה הרשומים במערכת הכשרה.נט
                                
                            </p>
                     	</div>
                     	
                     	<nav class="nav-tabs">
                     		<ul class="nav nav-pills pull-left">
                                <li class="card-action"><a href="/MosdotRep.aspx">צור דוח</a></li>
                                
                            </ul>
                     		
                     	</nav>
                     		
                    </div>
                </div>
                </div>
            <div class="col-md-4">
                        		<div class="card">
                    <div class="card-content">
                    	<div class="card-header-blue">
                           <h2 class="card-heading">דוח מענה על שאלות לפי קורס</h2>
                       	</div>
                       	<div class="card-body">
                     	  <p class="card-p" style="direction:rtl">
                              הדוח מראה את כל התשובות שענה מוסד ספציפי על שאלות ההתאמה. יש לבחור מוסד וללחוץ על הפק
                            </p>
                     	</div>
                     	
                     	<nav class="nav-tabs">
                     		<ul class="nav nav-pills pull-left">
                                <li class="card-action"><a href="#">צור דוח</a></li>
                               
                            </ul>
                     		
                     	</nav>
                     		
                    </div>
                </div>
                </div>
           <div class="col-md-4">

                        		<div class="card">
                    <div class="card-content">
                    	<div class="card-header-blue">
                           <h2 class="card-heading">דוח דורשי עבודה שהופנו לקורסים</h2>
                       	</div>
                       	<div class="card-body">
                     	  <p class="card-p" style="direction:rtl">
                                הדוח מראה את כל דורשי העבודה שהתאימו לקורסים לאיזה קורס הם הופנו ומה הסטטוס שלהם
                                
                            </p>
                     	</div>
                     	
                     	<nav class="nav-tabs">
                     		<ul class="nav nav-pills pull-left">
                                <li class="card-action"><a href="#">צור דוח</a></li>

                            </ul>
                     		
                     	</nav>
                     		
                    </div>
                </div>
               </div>
           	</div>
    </div>
 
</asp:Content>
