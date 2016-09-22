<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Account_Student" %>

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
    <div style="padding: 40px">
        <center>
            <div style="padding:25px">
                <asp:Button ID="sel_sub" runat="server" Text="Select Subjects" OnClick="sel_sub_Click"/>
            </div>
            <div style="padding:25px">
                <asp:Button ID="view_res" runat="server" Text="View Result" OnClick="view_res_Click"/>
            </div>
        </center>
    </div>
</asp:Content>

