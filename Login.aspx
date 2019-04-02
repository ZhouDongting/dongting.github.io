<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebSapInfo.frmLogin" %>
 
<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>--%>
 
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head runat="server"> 
 <title></title> 
</head> 
<body> 
     <div style="opacity:0.5;position:absolute;left:135px; width:300px;height:150px;background-color:#40B3DF; top: 27px;"></div>
    <div style="font-family:verdana;padding:20px;border-radius:10px;border:10px solid #8AC007;">
    <div style="opacity:0.3;position:absolute;left:236px; width:100px;height:200px;background-color:#8AC007; top: 104px;"></div>
    <h2 style="color:#ff0000;">MTS SANS SZ 内部信息查询</h2>
    <div style="letter-spacing:12px;">MTS SZ</div>
    <div style="color:#40B3DF;">信息
    <span style="background-color:#B4009E;color:#ffffff;">查询...</span>
    </div>
    <div style="color:#000000;">Hello all ...</div>
        <div><asp:Label ID="Label1" runat="server" Text="计数" ForeColor="#cccccc" AutoSize="true"></asp:Label></div>
        <div align="center"><div > 
     <h4>&nbsp;&nbsp;&nbsp; 登录页面 20190201 </h4>
     <h4>&nbsp;&nbsp;&nbsp; 用户名是你的mts邮箱</h4>
     <form id="frmLogin" runat="server" > 
      <p> 
         <asp:Label ID="lbusername" runat="server">用户名：</asp:Label>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tbusername" style="margin-left: 0px" width="220px" runat="server" placeholder="mts 邮箱地址,如:zhou.abc@mts.com"></asp:TextBox> 
      </p> 
      <p> 
         <asp:Label ID="lbpsw" runat="server">密 码：</asp:Label> 
         <asp:TextBox ID="tbpsw" width="220px" runat="server" TextMode="Password" style="margin-left: 0px" placeholder="你分机号" onfocus="tbpsw.value=''" onblur="if(tbpsw.value==''){tbpsw.value='你分机号码'}"></asp:TextBox> 
      </p> 
      <p> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="btnLogin" runat="server" Text="登录" onclick="btnLogin_Click" style="background-color:#40B3DF;color:#ffffff;"/>&nbsp; 
     <asp:Button ID="btnRegister" runat="server" Text="注册" onclick="btnRegister_Click" Enabled="False" style="background-color:#40B3DF;color:#ffffff;"/> 
      <asp:Button ID="btnLogin0" runat="server" Text="Pilot"  style="background-color:#40B3DF;color:#ffffff;" OnClick="btnLogin0_Click" Visible="False" />     </p> 
     </form>
</body>
</html>
 
