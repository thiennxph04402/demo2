<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Modify this template to jump-start your ASP.NET application.</h2>
            </hgroup>
            <p>
                To learn more about ASP.NET, visit <a href="http://asp.net" title="ASP.NET Website">http://asp.net</a>.
                The page features <mark>videos, tutorials, and samples</mark> to help you get the most from ASP.NET.
                If you have any questions about ASP.NET visit <a href="http://forums.asp.net/18.aspx" title="ASP.NET Forum">our forums</a>.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Getting Started</h5>
        </li>
    </ol>
<h5>
    <asp:GridView CssClass="table" Width="60%" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:BoundField DataField="MaKH" HeaderText="MaKH" InsertVisible="False" ReadOnly="True" SortExpression="MaKH" />
            <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
            <asp:BoundField DataField="HoDem" HeaderText="HoDem" SortExpression="HoDem" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
            <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
            <asp:CommandField ButtonType="Button" CancelText="Hủy" DeleteText="xóa" EditText="sửa" ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:inf205ConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([TenKH], [HoDem], [Email], [DiaChi], [SDT]) VALUES (@TenKH, @HoDem, @Email, @DiaChi, @SDT)" SelectCommand="SELECT [MaKH], [TenKH], [HoDem], [Email], [DiaChi], [SDT] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [HoDem] = @HoDem, [Email] = @Email, [DiaChi] = @DiaChi, [SDT] = @SDT WHERE [MaKH] = @MaKH">
        <DeleteParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="HoDem" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="HoDem" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
            <asp:Parameter Name="MaKH" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</h5>
<ol class="round">
        <li class="two">
            <h5>Add NuGet packages and jump-start your coding</h5>
            NuGet makes it easy to install and update free libraries and tools.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245147">Learn more…</a>
        </li>
        <li class="three">
            <h5>Find Web Hosting</h5>
            You can easily find a web hosting company that offers the right mix of features and price for your applications.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245143">Learn more…</a>
        </li>
    </ol>
</asp:Content>
