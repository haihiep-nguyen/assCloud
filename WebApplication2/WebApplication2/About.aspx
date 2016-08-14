<%@ Page Title="Khách Hàng" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="WebApplication2.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Khách Hàng</h1>
    </hgroup>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" Height="50px" Width="663px" AllowPaging="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
    <AlternatingRowStyle BackColor="White" />
    <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
        <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
        <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
        <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
    </Fields>
    <FooterStyle BackColor="#CCCC99" />
    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#F7F7DE" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:assignmentKhachHangConnectionString %>" SelectCommand="SELECT [MaKH], [TenKH], [DiaChi], [SDT] FROM [KhachHang]" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (@MaKH, @TenKH, @DiaChi, @SDT)" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [DiaChi] = @DiaChi, [SDT] = @SDT WHERE [MaKH] = @MaKH">
    <DeleteParameters>
        <asp:Parameter Name="MaKH" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="MaKH" Type="String" />
        <asp:Parameter Name="TenKH" Type="String" />
        <asp:Parameter Name="DiaChi" Type="String" />
        <asp:Parameter Name="SDT" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TenKH" Type="String" />
        <asp:Parameter Name="DiaChi" Type="String" />
        <asp:Parameter Name="SDT" Type="String" />
        <asp:Parameter Name="MaKH" Type="String" />
    </UpdateParameters>
    </asp:SqlDataSource>
<h1>Hóa Đơn</h1>
<br />
<asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource2" Height="50px" Width="666px" AllowPaging="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
    <AlternatingRowStyle BackColor="White" />
    <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
        <asp:BoundField DataField="NgayBan" HeaderText="NgayBan" SortExpression="NgayBan" />
        <asp:BoundField DataField="KhachHang_MaKH" HeaderText="KhachHang_MaKH" SortExpression="KhachHang_MaKH" />
        <asp:BoundField DataField="TongTien" HeaderText="TongTien" SortExpression="TongTien" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
    </Fields>
    <FooterStyle BackColor="#CCCC99" />
    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#F7F7DE" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:assignmentHoadonConnectionString %>" SelectCommand="SELECT [MaHD], [NgayBan], [KhachHang_MaKH], [TongTien] FROM [HoaDon]" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [NgayBan], [KhachHang_MaKH], [TongTien]) VALUES (@MaHD, @NgayBan, @KhachHang_MaKH, @TongTien)" UpdateCommand="UPDATE [HoaDon] SET [NgayBan] = @NgayBan, [KhachHang_MaKH] = @KhachHang_MaKH, [TongTien] = @TongTien WHERE [MaHD] = @MaHD">
    <DeleteParameters>
        <asp:Parameter Name="MaHD" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="MaHD" Type="String" />
        <asp:Parameter Name="NgayBan" Type="DateTime" />
        <asp:Parameter Name="KhachHang_MaKH" Type="String" />
        <asp:Parameter Name="TongTien" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="NgayBan" Type="DateTime" />
        <asp:Parameter Name="KhachHang_MaKH" Type="String" />
        <asp:Parameter Name="TongTien" Type="Decimal" />
        <asp:Parameter Name="MaHD" Type="String" />
    </UpdateParameters>
    </asp:SqlDataSource>
<br />
<h1>Chi Tiết Hóa Đơn</h1>
<br />
<asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="HoaDon_MaHD" DataSourceID="SqlDataSource3" Height="50px" Width="663px" AllowPaging="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
    <AlternatingRowStyle BackColor="White" />
    <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:BoundField DataField="HoaDon_MaHD" HeaderText="HoaDon_MaHD" ReadOnly="True" SortExpression="HoaDon_MaHD" />
        <asp:BoundField DataField="SanPham_MaSP" HeaderText="SanPham_MaSP" SortExpression="SanPham_MaSP" />
        <asp:BoundField DataField="SoLuongSP" HeaderText="SoLuongSP" SortExpression="SoLuongSP" />
        <asp:BoundField DataField="GiaBan" HeaderText="GiaBan" SortExpression="GiaBan" />
        <asp:BoundField DataField="Tong" HeaderText="Tong" SortExpression="Tong" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
    </Fields>
    <FooterStyle BackColor="#CCCC99" />
    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#F7F7DE" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:assignmentChitiethoadonConnectionString %>" SelectCommand="SELECT [HoaDon_MaHD], [SanPham_MaSP], [SoLuongSP], [GiaBan], [Tong] FROM [ChiTietHoaDon]" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [HoaDon_MaHD] = @HoaDon_MaHD" InsertCommand="INSERT INTO [ChiTietHoaDon] ([HoaDon_MaHD], [SanPham_MaSP], [SoLuongSP], [GiaBan], [Tong]) VALUES (@HoaDon_MaHD, @SanPham_MaSP, @SoLuongSP, @GiaBan, @Tong)" UpdateCommand="UPDATE [ChiTietHoaDon] SET [SanPham_MaSP] = @SanPham_MaSP, [SoLuongSP] = @SoLuongSP, [GiaBan] = @GiaBan, [Tong] = @Tong WHERE [HoaDon_MaHD] = @HoaDon_MaHD">
    <DeleteParameters>
        <asp:Parameter Name="HoaDon_MaHD" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="HoaDon_MaHD" Type="String" />
        <asp:Parameter Name="SanPham_MaSP" Type="String" />
        <asp:Parameter Name="SoLuongSP" Type="String" />
        <asp:Parameter Name="GiaBan" Type="Decimal" />
        <asp:Parameter Name="Tong" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="SanPham_MaSP" Type="String" />
        <asp:Parameter Name="SoLuongSP" Type="String" />
        <asp:Parameter Name="GiaBan" Type="Decimal" />
        <asp:Parameter Name="Tong" Type="Decimal" />
        <asp:Parameter Name="HoaDon_MaHD" Type="String" />
    </UpdateParameters>
    </asp:SqlDataSource>
<br />
</asp:Content>