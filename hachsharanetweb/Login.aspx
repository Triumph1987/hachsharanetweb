<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="hachsharanetweb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="main/csslogin.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <title></title>
    </head>
<body>
<div class="container">
    <div class="wrapper">
        <form class="form-signin" runat="server">
            <h3 class="form-signin-heading">

                <img src="Image/HACHSHARA.PNG" alt="Alternate Text" />
                <br />
<%--                <b style="color:#c7c7c7 !important">הכשרה.נט</b>--%>
            </h3>
<asp:TextBox ID="username" runat="server" type="text" class="form-control" name="u_name" placeholder="שם משתמש" required="" autofocus="" ></asp:TextBox>
<asp:TextBox ID="password" runat="server" type="password" class="form-control" name="u_pass" placeholder="סיסמה" required="" ></asp:TextBox>
<asp:Button ID="Login" Text="היכנס" runat="server" class="btn btn-lg btn-primary btn-block" name="Submit" value="Login" type="Submit" OnClick="Login_Click" />
        </form>
    </div>
</div>
    </body>
    </html>