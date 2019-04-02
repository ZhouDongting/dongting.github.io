<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PowerTestS.aspx.cs" Inherits="WebSapInfo.WebForm3" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ERP & SAP 信息查询</title>
    <style type="text/css">
        #form1 {
            height: 378px;
        }
    </style>
</head>
<body style="height: 253px">
    
    <form id="form1" runat="server"  defaultbutton="btnQuery">
         
    <div>已经做过的试验标准或模板信息查询 20190201
        <asp:Button ID="btnReturn" runat="server" Text="首页" OnClick="goBack" style="background-color:#40B3DF;color:#ffffff;"/>
        </div>
        <div><asp:Label ID="Label2" runat="server" Text="Time" ForeColor="Blue" AutoSize="true"></asp:Label></div>
        <p>
             <script type="text/javascript">
                 function CopyTable() {
                     //clipboardData.setData('Text', '<%= strTest %>');

                     inputData.select();
                     if (document.execCommand('copy', false, null)) {
                         alert("table copied success!")
                     }
                     else {
                         alert("copied fail!")
                     }

                 }
             </script>

            <%--<a href="javascript:alert('<%=strTest%>');">show</a>--%> 
            <%--<a href="javascript:" onclick="clipboardData.setData('Text','<%= strTest %>');" class="btn ps-cs6">复制</a>--%> 
            <%--<a href="javascript:" onclick="CopyTable()" class="btn ps-cs6">复制</a>--%> 
            <input onclick="CopyTable()" value="拷贝表格" type="button" style="background-color:#40B3DF;color:#ffffff;"/>
            <%--<input id='input_url'  style='opacity: 0;position: absolute;' type="text" value ='<%= strTest %>' />--%>
            <textarea name="" id="inputData" cols="" rows="" style="vertical-align:top;outline:none;opacity:0"><%=strTest%></textarea>
            <%--<a href="javascript:alert(clipboardData.getData('Text'));">test</a>--%> 
            <%--<asp:Button ID="Button9" runat="server" OnClick="" Text="test" Width="88px" ForeColor="Blue" />--%>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="按照:" ForeColor="Blue" Width="50px" ></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="200px" ForeColor="Blue">
                <asp:Listitem value="0">标准号查询</asp:Listitem>
                <asp:Listitem value="1">标准名称查询</asp:Listitem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBox1" runat="server" Text="21404106194" Width="424px" ForeColor="Blue" placeholder="可以批量查询，输入多个编号以空格划分"></asp:TextBox >
            <asp:Button ID="btnQuery" runat="server"  OnClick="Button1_Click" Text="查询" Width="88px" ForeColor="Blue" style="background-color:#40B3DF;color:#ffffff;"/>
        </p>
        <p>
        <asp:GridView ID="GridView1" runat="server" AllowCustomPaging="True" CellPadding="4" ForeColor="#333333" Height="16px" OnRowCreated="GridView1_RowCreated">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        </p>
    </form>
</body>
</html>
