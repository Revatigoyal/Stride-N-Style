<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ProcessOrder.aspx.cs" Inherits="Admin_ProcessOrderaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
    <div class="form-control">
        <div class="col-md-3">
        Select Order<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CustName" DataValueField="Id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UsersDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [CustName], [Id] FROM [OrderParent] WHERE ([Status] = @Status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Pending" Name="Status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
    </div>

    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True"  AutoGenerateColumns="False" DataKeyNames="OrderChildID" CssClass="table" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="OrderChildID" HeaderText="OrderChildID" InsertVisible="False" ReadOnly="True" SortExpression="OrderChildID" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT OrderChild.OrderChildID, OrderChild.Price, OrderChild.Qty, ProductT.ProductName FROM OrderChild INNER JOIN ProductT ON OrderChild.ProductID = ProductT.ProductID WHERE (OrderChild.Id = @id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="id" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div><br>
    <div>
        <asp:Button ID="btnFinish" runat="server" OnClick="btnFinish_Click" CssClass="btn btn-success" Text="Accept" />
        
        <asp:Button ID="Button" runat="server" OnClick="Button1_Click" CssClass="btn btn-danger" Text="Reject" />
        
    </div><br>
    <div>
   <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <br>


    </div>
    <div><br><br><br><br></div>
</asp:Content>

