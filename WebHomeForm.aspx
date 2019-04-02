<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebHomeForm.aspx.cs" Inherits="WebSapInfo.WebHomeForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebHomeForm.aspx.cs" Inherits="WebSapInfo.WebHomeForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <center>
<h2>Hello!</h2>
<p><%Response.Write(DateTime.Now.ToLongTimeString());%></p>
</center>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table style="background-color: blue; width: 100%; text-align:center">
                        <thead>
                            <tr style="color: white;">
                                <td>编号</td>
                                <td>标准号</td>
                                <td>标准名称</td>
                                <td>上市时间</td>
                                <td>更新日期</td>
                                <td>动力</td>
                                <td>排量</td>
                                <td>价格</td>
                                <td>图片</td>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr style="background-color: #808080">
                        <td><%#Eval("Code") %></td>
                        <td><%#Eval("Name") %></td>
                        <td><%#Eval("Brand") %></td>
                        <td><%#Eval("Time") %></td>
                        <td><%#Eval("Oil") %></td>
                        <td><%#Eval("Power") %></td>
                        <td><%#Eval("Exhaust") %></td>
                        <td><%#Eval("Price") %></td>
                        <td><%#Eval("Pic") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
            </table>
                </FooterTemplate>
            </asp:Repeater>
            <div style="width: 55%; position: relative; float: left; height: 25px; line-height: 25px; text-indent: 20px;">
                共
                <asp:Label ID="Label_Sum" runat="server" Text="Label"></asp:Label>
                条记录，共
                <asp:Label ID="Label_Maxpage" runat="server" Text="Label"></asp:Label>
                页，第
                <asp:Label ID="Label_Nowpage" runat="server" Text="Label"></asp:Label>
                页|每页
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" ></asp:DropDownList>
                条记录
            </div>
            <div style="width: 40%; position: relative; float: right; height: 25px; line-height: 25px;">
                <asp:LinkButton ID="btn_First" runat="server">首页</asp:LinkButton>&nbsp
                <asp:LinkButton ID="btn_Prev" runat="server">上一页</asp:LinkButton>&nbsp
                <asp:LinkButton ID="btn_Next" runat="server">下一页</asp:LinkButton>&nbsp
                <asp:LinkButton ID="btn_Last" runat="server">尾页</asp:LinkButton>&nbsp
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                <asp:Button ID="Button1" runat="server" Text="跳转" />
            </div>
        </div>
        <asp:Repeater ID="Repeater2" runat="server">
        </asp:Repeater>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
