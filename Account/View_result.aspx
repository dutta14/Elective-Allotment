<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="View_result.aspx.cs" Inherits="Account_View_result" %>

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

    <asp:GridView ID="result" runat="server" AutoGenerateColumns="false" CellPadding="10">
     <Columns>
      <asp:BoundField DataField="id" HeaderText="Subject ID"/>
      <asp:BoundField DataField="regno" HeaderText="Registration No."/>
      <asp:BoundField DataField="elist" HeaderText="Electives" />
    </Columns>
    </asp:GridView>

</asp:Content>

