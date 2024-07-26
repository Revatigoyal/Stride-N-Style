<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Admin_Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <p>
        <h1>Order Report</h1>
    </p><br><br>
    <p>
        From Date:<asp:TextBox ID="txtFromDate"  runat="server" TextMode="Date"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To Date:<asp:TextBox ID="txtToDate" runat="server" TextMode="Date"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="GetReport" CssClass="btn btn-primary" runat="server" OnClick="GetReport_Click" Text="Get Report" />
    </p></center>
    <center>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                <asp:BoundField DataField="CustName" HeaderText="CustName" SortExpression="CustName" />
                <asp:BoundField DataField="CustAddress" HeaderText="CustAddress" SortExpression="CustAddress" />
                <asp:BoundField DataField="Dated" DataFormatString="{0:dd-MMM-yyyy}" HeaderText="Dated" SortExpression="Dated" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT OrderParent.OrderID, OrderParent.CustName, OrderParent.CustAddress, OrderParent.Dated, OrderParent.Status FROM OrderParent INNER JOIN OrderChild ON OrderParent.Id = OrderChild.Id WHERE (OrderParent.Dated &gt;= @FromDate and OrderParent.Dated&lt;=@ToDate) ORDER BY OrderParent.Dated">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtFromDate" Name="FromDate" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtToDate" Name="ToDate" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p></center>
</asp:Content>

