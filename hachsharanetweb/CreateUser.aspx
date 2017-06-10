<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="hachsharanetweb.CreateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <meta name="viewport" content="width=device-width, initial-scale=1">

<link href="main/CreateUser.css" rel="stylesheet" />

     </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
  	<h1>יצירת משתמש</h1>
 	<div class="container">
			<div class="row main">
				<div class="main-login main-center">
			
					<form class="" method="post" action="#"  dir="rtl">
						
                        
                        						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">מספר תעודת זהות</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="IDnum"  placeholder="הכנס תעודת זהות"/>
								</div>
							</div>
						</div>


                        						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">שם פרטי</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="Firstname"  placeholder="הכנס שם פרטי"/>
								</div>
							</div>
						</div>

                        						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">שם משפחה</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="Lastname"  placeholder="הכנס שם משפחה"/>
								</div>
							</div>
						</div>

<%--						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label"></label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" id="email"  placeholder="Enter your Email"/>
								</div>
							</div>
						</div>--%>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">שם משתמש</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="username" id="username"  placeholder="הכנס שם משתמש"/>
								</div>
							</div>
						</div>


						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">סיסמה</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="password"  placeholder="הכנס סיסמה"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">אמת סיסמה</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="confirm" id="confirm"  placeholder="אמת סיסמת משתמש"/>
								</div>
							</div>
						</div>

						<div class="form-group ">
							<a href="#" target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">רשום משתמש</a>
						</div>
						
					</form>
				</div>
			</div>
		</div>

		 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

</asp:Content>
