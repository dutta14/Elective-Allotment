<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>eS@S</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Abhishek Bagchi:</span>
            <span>8105100507</span>
        </p>
        <p>
            <span class="label">Anindya Dutta:</span>
            <span>8884213527</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span><a href="mailto:Support@esas.com">Support@esas.com</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:Marketing@esas.com">Marketing@esas.com</a></span>
        </p>
        <p>
            <span class="label">General:</span>
            <span><a href="mailto:General@esas.com">General@esas.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            IX Block, MIT Hostels<br />
            Manipal, KA 576104
        </p>
    </section>
</asp:Content>