<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="WebSapInfo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ERP & SAP 信息查询</title>
    <style type="text/css">
        #form1 {
            height: 378px;
        }
    </style>
</head>
   

<body style="height: 210px" >
    
    <form id="form1" runat="server" >
         <%--onselectstart="return false"--%>
        <div >ERP & SAP 信息查询 20190201
            <asp:Button ID="Button7" style="background-color:#40B3DF;color:#ffffff;" runat="server" Text="查询方式2" OnClick="open1"/>
            <asp:Button ID="btnReturn" style="background-color:#40B3DF;color:#ffffff;" runat="server" Text="首页" OnClick="goBack"/>
        </div>
        <div>
             <asp:Label ID="Label2" runat="server" Text="Time" ForeColor="Red" AutoSize="true" ></asp:Label>
        </div>
        <p>
             <script type="text/javascript">
                 function CopyTable() {
                     //clipboardData.setData('Text', '<%= strTest %>');
                     //alert('<%= strTest %>')
                     inputData.select();
                     if (document.execCommand('copy', false, null))
                     {
                         alert("table copied success!")
                     }
                     else {
                         alert("copied fail!")
                     }   
                }
             </script>

            <%--<a href="javascript:alert('<%=strTest%>');">show</a>--%>            <%--<a href="javascript:" onclick="clipboardData.setData('Text','<%= strTest %>');" class="btn ps-cs6">复制</a>--%>            <%--<a href="javascript:" onclick="CopyTable()" class="btn ps-cs6">复制</a>--%> 
            <input onclick="CopyTable()" style="background-color:#40B3DF;color:#ffffff;" value="拷贝表格" type="button"/>            <%--<button onclick="CopyTable()" />--%>            <%--<input id='input_url' style='opacity: 0;position: absolute;' type="text"/>--%>            <%--<input id='input_url' aria-multiline="true" style='opacity:0;position: absolute;' type="text" value ='<%= strTest %>' />--%>             <%--<input id='input_url' aria-multiline="true" style='opacity: 0;position: absolute;' type="text" value ='abc&#09;12345&#10;&#13;def' />--%>
            
            <textarea name="" id="inputData" cols="" rows="" style="vertical-align:top;outline:none;opacity:0"><%=strTest%></textarea>
            <asp:CheckBox ID="chkNoNull" runat="server" Text="显示SAP不存在PN"  style="background-color:#40B3DF;color:#ffffff;" />
        </p>

       <%--<asp:Button ID="Button9" runat="server" OnClick="" Text="test" Width="88px" ForeColor="Blue" />--%>

        <div>
            <asp:TextBox ID="TextBox1" runat="server" Text="21404106194" Width="89px">21404106194</asp:TextBox >
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ERP PN查询" Width="88px" ForeColor="Blue" style="background-color:#40B3DF;color:#ffffff;"/>
            <asp:TextBox ID="TextBox2" runat="server" Width="99px">高低温箱钣金件</asp:TextBox>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ERP 描述查询" Width="99px" ForeColor="Blue" style="background-color:#40B3DF;color:#ffffff;"/>
            <asp:TextBox ID="TextBox3" runat="server" Width="99px">168000</asp:TextBox>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="ERP 规格查询" Width="99px" ForeColor="Blue" style="background-color:#40B3DF;color:#ffffff;"/>
            <asp:TextBox ID="TextBox4" runat="server" Width="89px">100-468-828</asp:TextBox>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="SAP PN查询" Width="88px" ForeColor="Blue" style="background-color:#40B3DF;color:#ffffff;"/>
            <asp:TextBox ID="TextBox5" runat="server" Width="99px">CANTILEVER BEAM 1J(NOT INSTALLED)</asp:TextBox>
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="SAP 描述查询" Width="99px" ForeColor="Blue" style="background-color:#40B3DF;color:#ffffff;"/>
            <asp:TextBox ID="TextBox6" runat="server" Width="89px">21503020032</asp:TextBox>
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="SAP 老PN查询" Width="115px"  ForeColor="Blue" style="background-color:#40B3DF;color:#ffffff;"/>
        </div>

        <br />
        
        <asp:GridView ID="GridView1" runat="server" AllowCustomPaging="True" CellPadding="4" ForeColor="#333333" Height="38px" OnRowCreated="GridView1_RowCreated">
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

    </form>
</body>
</html>
