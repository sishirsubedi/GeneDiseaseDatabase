<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GeneDiseaseDatabase.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="Button.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>

    <img src="baylor logo.png" alt="Smiley face" height="200" style="width: 775px"/>
    <form id="form1" runat="server">

         <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        Registration Page:<br />
             <br />
         </div>
    <div>
    
        &nbsp;&nbsp;&nbsp;
    
        Full Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="fullnameBox" runat="server" BorderWidth="3px" ></asp:TextBox>
        <br />
        <br />&nbsp;&nbsp; Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="UsernameBox" runat="server" BorderWidth="3px"></asp:TextBox>
        <br />
        <br />
    
    </div>
        &nbsp;&nbsp;&nbsp;
        Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="PasswordBox" runat="server" BorderWidth="3px" TextMode="Password"></asp:TextBox>
         <br />
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="emailBox" runat="server" BorderWidth="3px" ></asp:TextBox>
         <br />
         <br />
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="SubmitBotton" runat="server" class="button" OnClick="SubmitBotton_Click" Text="Submit" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="LoginBotton" runat="server" class="button"  Text="Back" OnClick="LoginBotton_Click" Width="80px" />
        </p>
    </form>
   
</body>
</html>
