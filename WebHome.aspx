<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebHome.aspx.cs" Inherits="WebSapInfo.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>

<body>
    <div style="opacity:0.5;position:absolute;left:135px; width:300px;height:150px;background-color:#40B3DF; top: 27px;"></div>
    <div style="font-family:verdana;padding:20px;border-radius:10px;border:10px solid #8AC007;">
    <div style="opacity:0.3;position:absolute;left:303px; width:100px;height:200px;background-color:#8AC007; top: 113px;"></div>
    <h2 style="color:#ff0000;">MTS SANS SZ 内部信息查询</h2>
    <div style="letter-spacing:12px;">MTS SZ</div>
    <div style="color:#40B3DF;">信息
    <span style="background-color:#B4009E;color:#ffffff;">查询...</span>
    </div>
    <div style="color:#000000;">Hello all ...</div>
        <div><asp:Label ID="Label1" runat="server" Text="计数" ForeColor="Blue" AutoSize="true"></asp:Label></div>
        <%--<br />
        <br />--%>
        <form id="form1" runat="server">
        <%--<h1 align="center" >MTS SANS 内部信息查询</h1>--%>
        <%--<p>
            <a id="link1" runat="server">ERP & SAP 信息查询1</a>
            <br />
            <br />
            <a id="link2" runat="server">ERP & SAP 信息查询2</a>
            <br />
            <br />
            <a id="link3" runat="server">PowerTest 标准查询</a>
            <br />
            <br />
            <a id="link4" runat="server">TestSuite 模板查询</a>
        </p> --%>
        <p>
            <asp:Button ID="btnlink1" style="background-color:#40B3DF;color:#ffffff;" width="220px" runat="server" Text="ERP & SAP 信息查询1" onclick="btnlink1_Click" Enabled="True" /> 
            <br />
            <br />
            <asp:Button ID="btnlink2" style="background-color:#40B3DF;color:#ffffff;" width="220px"  runat="server" Text="ERP & SAP 信息查询2" onclick="btnlink2_Click" Enabled="True" /> 
            <br />
            <br />
            <asp:Button ID="btnlink3" style="background-color:#40B3DF;color:#ffffff;" width="220px" runat="server" Text="PowerTest 标准查询" onclick="btnlink3_Click" Enabled="True" /> 
            <br />
            <br />
            <asp:Button ID="btnlink4" style="background-color:#40B3DF;color:#ffffff;" width="220px"  runat="server" Text="TestSuite 模板查询" onclick="btnlink4_Click" Enabled="True" /> 
        </p> 
    </form>
    </div>

<%--    <br />
    <br />--%>
</body>

</html>
