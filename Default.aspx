<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title>Lucas Johnson Exam 3b</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <header id="Header">
        <h1>MSCI:3300</h1>
        <h2>Exam 3b</h2>
        <asp:Label ID="lbllang" runat="server" meta:resourceKey="lblLang">

        </asp:Label><asp:DropDownList ID="ddLang" runat="server" AutoPostBack="true">
            <asp:ListItem Value="ar-SA">Arabic</asp:ListItem>
                <asp:ListItem Value="zh">Chinese</asp:ListItem>
                <asp:ListItem Value="en-US" Selected="True">English</asp:ListItem>
                <asp:ListItem Value="es">Spanish</asp:ListItem>
            </asp:DropDownList>
    </header>
        <br/>
</div>
        <div id="input" runat="server">
        <asp:Label ID="lblName" runat="server" meta:resourceKey="lblName"></asp:Label><asp:TextBox ID="tbName" runat="server"></asp:TextBox><asp:RequiredFieldValidator CssClass="RFV" ID="rfvName" runat="server" meta:resourceKey="rfvName" ControlToValidate="tbName"></asp:RequiredFieldValidator> 
        <br />
        <br />
        <asp:Label ID="lblGender" runat="server" meta:resourceKey="lblGender"></asp:Label>&nbsp; <asp:RadioButton ID="radioMale" runat="server" GroupName="Gender" meta:resourceKey="radioMale" />&nbsp; <asp:RadioButton ID="radioFemale" runat="server" GroupName="Gender" meta:resourceKey="radioFemale" Checked="true"/>
        <br />
        <br />
        <asp:Label ID="lblGraduate" runat="server" meta:resourceKey="lblGraduate"></asp:Label> <br />
        <asp:Calendar ID="Calendar" runat="server"></asp:Calendar> <br /><br />
        <asp:Label ID="lblSalary" runat="server" meta:resourceKey="lblSalary"></asp:Label><asp:TextBox ID="tbSalary" runat="server"></asp:TextBox><asp:RequiredFieldValidator CssClass="RFV" ID="rfvSalary" runat="server" meta:resourceKey="rfvSalary" ControlToValidate="tbSalary"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" meta:resourceKey="btnSubmit" />

    </div>
    <div id="output" runat="server">
        <asp:Label ID="lblHello" runat="server" meta:resourceKey="lblHello"></asp:Label>&nbsp;<asp:Label ID="lblNameOutput" runat="server"></asp:Label><br /> <br />
        <asp:Label ID="lblGradResponse" runat="server" meta:resourceKey="lblGradResponse"></asp:Label>
    &nbsp;<asp:Label ID="lblGradOutput" runat="server"></asp:Label><br /><br />
        <asp:Label ID="lblSalaryResponse" runat="server" meta:resourceKey="lblSalaryResponse"></asp:Label>&nbsp;<asp:Label ID="lblSalaryOutput" runat="server"></asp:Label><br /><br />

        <asp:Label ID="lblGithub" runat="server" meta:resourceKey="lblGithub"></asp:Label>&nbsp;<asp:HyperLink ID="githubLink" runat="server" NavigateUrl="https://github.com/ljohnson10">GITHUB</asp:HyperLink><br /><br />
        <asp:Button ID="btnReset" runat="server" meta:resourceKey="btnReset"/>
    </div>
         <div id="footer">
        
        <iframe src="http://ghbtns.com/github-btn.html?user=ljohnson10&type=follow" allowtransparency="true" frameborder="0" scrolling="0" width="132" height="20"></iframe>
    </div>
    </form>
</body>
</html>
