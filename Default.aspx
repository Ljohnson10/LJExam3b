<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lucas Johnson Exam 3b</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <header id="Header">
        <h1>MSCI:3300</h1>
        <h2>Exam 3b</h2>
        <asp:Label ID="lbllang" runat="server" meta:resourceKey="lblLang"></asp:Label><asp:DropDownList ID="ddLang" runat="server"></asp:DropDownList>
    </header>
        <br/>

        <asp:Label ID="lblName" runat="server" meta:resourceKey="lblName"></asp:Label><asp:TextBox ID="tbName" runat="server"></asp:TextBox> 
        <br />
        <br />
        <asp:Label ID="lblGender" runat="server" meta:resourceKey="lblGender"></asp:Label>&nbsp; <asp:RadioButton ID="radioMale" runat="server" GroupName="Gender" meta:resourceKey="radioMale" />&nbsp; <asp:RadioButton ID="radioFemale" runat="server" GroupName="Gender" meta:resourceKey="radioFemale"/>
        <br />
        <br />
        <asp:Label ID="lblGraduate" runat="server" ></asp:Label> <br />
        <asp:Calendar ID="Calendar" runat="server"></asp:Calendar> <br /><br />
        <asp:Label ID="lblSalary" runat="server"></asp:Label><asp:TextBox ID="tbSalary" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" />

    </div>
    <div id="output">
        <asp:Label ID="lblHello" runat="server"></asp:Label>&nbsp;<asp:Label ID="lblNameOutput" runat="server"></asp:Label><br /> <br />
        <asp:Label ID="lblGradResponse" runat="server"></asp:Label>
    &nbsp;<asp:Label ID="lblGradOutput" runat="server"></asp:Label><br /><br />
        <asp:Label ID="lblSalaryResponse" runat="server"></asp:Label>&nbsp;<asp:Label ID="lblSalaryOutput" runat="server"></asp:Label><br /><br />

        <asp:Label ID="lblGithub" runat="server"></asp:Label>&nbsp;<asp:HyperLink ID="githubLink" runat="server" NavigateUrl="https://github.com/ljohnson10">GITHUB</asp:HyperLink>
    </div>
         <div id="footer">
        
        <iframe src="http://ghbtns.com/github-btn.html?user=ljohnson10&type=follow" allowtransparency="true" frameborder="0" scrolling="0" width="132" height="20"></iframe>
    </div>
    </form>
</body>
</html>
