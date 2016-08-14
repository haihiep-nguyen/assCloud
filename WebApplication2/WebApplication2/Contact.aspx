<%@ Page Title="Liên Hệ" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="WebApplication2.Contact" %>

<%@ Register namespace="Subgurim.Controles" tagprefix="Controles" %>
<%@ Register assembly="GMaps" namespace="Subgurim.Controles" tagprefix="cc1" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>HPP</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Điện thoại: 0986016713</h3>
        </header>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        <p>
            Tăng Minh Phúc: <span><a href="mailto:phuctmph03988@fpt.edu.vn">phuctmph03988@fpt.edu.vn</a></span></p>
            <p>
            Nguyễn Hải Hiệp:<span><a href="mailto:hiepnhph03797@fpt.edu.vn">hiepnhph03797@fpt.edu.vn</a></span>
        </p>
        </header>
        <p>
            Hoàng Văn Phương:<a href="mailto:phuonghvph03867@fpt.edu.vn"> phuonghvph03867@fpt.edu.vn</a></p>
    </section>

    <section class="contact">
        <header>
            <h3>Địa chỉ:<span> Hàm Nghi, KĐT Mỹ Đình, Hà Nội</span></h3>
        <p>
        </header>
        
            </p>
        
       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.9731604515446!2d105.76616781423456!3d21.033759892985024!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454bee40409db%3A0xac6ab720d3555559!2zSMOgbSBOZ2hpLCBN4bu5IMSQw6xuaCAyLCBD4bqndSBHaeG6pXksIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1471185769159" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    </section>

   
    </a>

   
</asp:Content>