<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Medicines.aspx.cs" Inherits="Epharmacy.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <html lang="en">
<head>
    
    <title>Medicines</title>
    <link rel="stylesheet" href="Medicines.css">
</head>
<body>
    <div id="BigCont" style="left: 5%; top: 15%">
        <div id="Ti">
            <h1 style="font-weight: bold;","color: #587BBF;">Medications</h1>
        </div>

        <div id="I"></div><br>
        
        <br>
        <div id="Bloc1" style="left: 0%; top: 0px; width: 1241px; height: 39px">
             <input type="text" name="" id="Medicine_ID" placeholder="Medicine ID" runat="server">

             <input type="date" name="" id="Expiry_Date" placeholder="Expiry Date" runat="server">
            <input type="text" name="" id="MName" placeholder="Medicine Name" runat="server">
            <asp:DropDownList ID="MType" runat="server" Height="26px" Width="114px" ForeColor="#587BBF">
                <asp:ListItem Text="Tablets" Value="Tablets"></asp:ListItem>
                 <asp:ListItem Text="Drops" Value="Drops"></asp:ListItem>
                 <asp:ListItem Text="Powder" Value="Powder"></asp:ListItem>
                 <asp:ListItem Text="Drugs" Value="Drugs"></asp:ListItem>
            </asp:DropDownList>
            <input type="number" name="" id="MQty" placeholder="Quantity" runat="server">
            <input type="number" name="" id="MPrice" placeholder="Price" runat="server">
            <asp:DropDownList ID="MMan" runat="server" Height="26px" ForeColor="#587BBE">
                <asp:ListItem Text="Eipico" Value="Eipico"></asp:ListItem>
                 <asp:ListItem Text="IndiaMed" Value="IndiaMed"></asp:ListItem>
                 <asp:ListItem Text="EvaPharma" Value="EvaPharma"></asp:ListItem>
                 <asp:ListItem Text="Pubmed" Value="Pubmed"></asp:ListItem>
                 <asp:ListItem Text="Phizeer" Value="Phizeer"></asp:ListItem>
                 <asp:ListItem Text="CairoMed" Value="CairoMed"></asp:ListItem>
            </asp:DropDownList>

          
        </div><br><br>
        <div id="BtDiv">
            <asp:Button ID="AddBtn" runat="server" Text="Add" OnClick="AddBtn_Click1" Height="30px" Width="118px" HorizontalAlign="Center" BackColor="White" ForeColor="#587BBF" />  
            <asp:Button ID="EditBtn" runat="server" Text="Edit" OnClick="EditBtn_Click1" Height="30px" Width="118px" HorizontalAlign="Center" BackColor="White" ForeColor="#587BBF" />  
           
        </div><br/><br/>
        <div id="GVDiv">

            <asp:GridView ID="MedGV" runat="server" HorizontalAlign="Center" AutoGenerateSelectButton="True" OnSelectedIndexChanged="MedGV_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" style="left: -1%; top: 0px; width: 1145px; height: 159px" >
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

        </div>
        
    </div>
</body>
</html>
    
</asp:Content>
