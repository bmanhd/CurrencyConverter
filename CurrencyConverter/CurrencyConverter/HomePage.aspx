<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CurrencyConverter.mainpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 220px;
        }
        .auto-style3 {
            width: 220px;
            height: 24px;
        }
        .auto-style4 {
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>Currency Converter </strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">From:</td>
                <td>To:</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="ddlFromCurrency" runat="server">
                        <asp:ListItem>GBP</asp:ListItem>
                        <asp:ListItem>AUD</asp:ListItem>
                        <asp:ListItem>EUR</asp:ListItem>
                        <asp:ListItem>USD</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlToCurrency" runat="server">
                        <asp:ListItem>GBP</asp:ListItem>
                        <asp:ListItem>AUD</asp:ListItem>
                        <asp:ListItem>EUR</asp:ListItem>
                        <asp:ListItem>USD</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="txtFromCurrency" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtToCurrency" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnConvert" runat="server" Height="26px" Text="Convert Values" OnClick="btnConvert_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="ErrorLabel" runat="server" ForeColor="#990000" Text="ERROR: please input valid values" Visible ="false"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
