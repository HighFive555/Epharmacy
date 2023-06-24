<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Epharmacy.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-color:aliceblue
        }
        .auto-style1 {
            width: 462px;
            height: 291px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
            width: 284px;
        }
        .auto-style6 {
            width: 284px;
        }
        .auto-style9 {
            width: 284px;
            height: 67px;
        }
        .auto-style10 {
            text-align: center;
            height: 67px;
        }
        .auto-style11 {
            font-size: 40pt;
            color: #627A96;
        }
        .auto-style13 {
            text-align: center;
            width: 905px;
        }
        .auto-style14 {
            height: 983px;
        }
        .auto-style16 {
            color: #627A96;
            font-size: 15pt;
        }
        .auto-style17 {
            text-align: center;
            width: 284px;
            height: 229px;
        }
        .auto-style18 {
            text-align: center;
            height: 229px;
        }
        .auto-style19 {
            font-size: 13pt;
            color: #627A96;
        }
        .auto-style22 {
            font-size: 40pt;
        }
        .auto-style23 {
            font-size: 13pt;
            color: #999999;
        }
        .auto-style24 {
            font-size: 50pt;
            color: #627A96;
        }
        .auto-style25 {
            width: 100%;
        }
        .auto-style26 {
            color: #F2EAD3;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style14" style="background-color: #FEFEFE">
            <br />
            <br />
            &nbsp;&nbsp;
            <table style="margin:auto;" class="auto-style1" align="center">
                <tr>
                    <td class="auto-style13" rowspan="9">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style11">
                        <br />
                        <br />
                        <br />
                        <br />
                        </span><span class="auto-style24" style="color: #29AAE1">PharmaPlus</span><span class="auto-style19"><span class="auto-style11"><br />
                        </span></span><span class="auto-style22"><span class="auto-style23">Welcome to PharmaPlus !
                        <br />
                        Enter your login credential to access the system.</span></span><span class="auto-style11"><span class="auto-style19"><br />
                        </span></span><span class="auto-style11">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        </span></strong></td>
                    <td class="auto-style13" rowspan="9">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style3" rowspan="9">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image2" runat="server" Height="534px" ImageUrl="~/img/2009.i105.023..isometric pharmacy banners.jpg" Width="707px" />
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        </td>
                    <td class="auto-style18">
                        <table class="auto-style25">
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style18">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style18">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <strong>
                        <asp:Label ID="Label1" runat="server" Text="Username" CssClass="auto-style16" ForeColor="#29AAE1"></asp:Label></strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtUserName" runat="server" Height="20px" Width="230px"></asp:TextBox></td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <strong>
                        <asp:Label ID="Label2" runat="server" Text="Password" CssClass="auto-style16" ForeColor="#29AAE1"></asp:Label></strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Height="20px" Width="230px"></asp:TextBox></td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        </td>
                    <td class="auto-style3">
                        <strong>
                        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" BackColor="#29AAE1" Height="31px" Width="132px" BorderColor="#F2EAD3" CssClass="auto-style26" ForeColor="White" /></strong>
                        <br />
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style3">
                        <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect user credentials" ForeColor="Red"></asp:Label></td>

                    <td class="auto-style3">
                        </td>

                    <td class="auto-style3">
                        </td>

                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>

                    <td class="auto-style10">
                        &nbsp;</td>

                    <td class="auto-style10">
                        &nbsp;</td>

                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">
                        &nbsp;</td>

                    <td class="auto-style10">
                        &nbsp;</td>

                    <td class="auto-style10">
                        &nbsp;</td>

                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">
                        &nbsp;</td>

                    <td class="auto-style10">
                        &nbsp;</td>

                    <td class="auto-style10">
                        &nbsp;</td>

                </tr>
            </table>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
