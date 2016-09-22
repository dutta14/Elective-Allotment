<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Options.aspx.cs" Inherits="Account_Options" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %></h1>
                <h2>Elective Subjects Allotment System</h2>
            </hgroup>
            <p>
                Click on a button to continue the process.
            </p>
        </div>
    </section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Button ID="Button1" runat="server" Text="Elective-I" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Elective-II" OnClick="Button2_Click"/>
    <asp:Button ID="Button3" runat="server" Text="Elective-III" OnClick="Button3_Click"/>
</asp:Content>

