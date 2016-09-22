<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Subject_select.aspx.cs" Inherits="Account_Subject_select" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %></h1>
                <h2>Elective Subjects Allotment System</h2>
            </hgroup>
            <p>
                Select subjects.
            </p>
        </div>
    </section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
   
    <asp:Label runat="server" Text="Select Elective" />
    <asp:DropDownList runat="server" ID="elective" OnSelectedIndexChanged="elective_SelectedIndexChanged" AutoPostBack="true"/><br />
   <br />
   
    <asp:GridView ID="all" runat="server" AutoGenerateColumns="false" Visible="false">
     <Columns>
      <asp:BoundField DataField="sid" HeaderText="Subject ID"/>
      <asp:BoundField DataField="name" HeaderText="Name"/>
      <asp:BoundField DataField="about" HeaderText="About" />
      <asp:TemplateField HeaderText="Preference">
          <ItemTemplate>
              <asp:TextBox ID="pref" runat="server" />
          </ItemTemplate>
      </asp:TemplateField> 
     
     </Columns>
    </asp:GridView>
    <asp:Label ID="lbl" runat="server" />
    <asp:Button ID="subm" Text="Submit" OnClick="subm_Click" runat="server" />
</asp:Content>

