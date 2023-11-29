<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusTicketing.aspx.cs" Inherits="Practical3.BusTicketing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 93px;
        }
        .auto-style2 {
            width: 26px;
        }
        .auto-style3 {
            width: 93px;
            height: 23px;
        }
        .auto-style4 {
            width: 26px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            ABC BUS ONLINE BOOKING &amp; TICKETING SYSTEM<br />
            <asp:Label ID="lblTime" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Postback" />
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Departure<br />
                    Date</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:Calendar ID="calDepartDt" runat="server" OnSelectionChanged="calDepartDt_SelectionChanged"></asp:Calendar>
                    <asp:TextBox ID="txtDepartDt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Adult</td>
                <td class="auto-style4">:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtAdult" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Child</td>
                <td class="auto-style4">:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtChild" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">From</td>
                <td class="auto-style4">:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="ddlFrom" runat="server" >
                        <asp:ListItem>Select Origin</asp:ListItem>
                        <asp:ListItem>Hentian Duta</asp:ListItem>
                        <asp:ListItem>Hentian Putra</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Destination</td>
                <td class="auto-style4">:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="ddlTo" runat="server" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>Select Destination</asp:ListItem>
                        <asp:ListItem>Butterworth</asp:ListItem>
                        <asp:ListItem>Seremban</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Ticket Price</td>
                <td class="auto-style4">:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPrice" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            </table>
        <p>
                    <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
                </p>
        <p>
            <asp:Button ID="btnBookTkt" runat="server" Text="Book Ticket" OnClientClick="javascript:alert('You are now will be directed to the booking confirmation page')" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnMouseOver="this.value='Click if you confirm to reset selection'" OnMouseOut="this.value='Cancel'" OnClick="btnCancel_Click"/>
        </p>
    </form>
</body>
</html>
