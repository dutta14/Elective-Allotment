<%@ Page Title="eS@S" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Elective Subjects Allotment System</h2>
            </hgroup>
            <p>
                This website is to help the students to select their branch elective without the need
                of going to <mark>any specific place</mark> and writing on a sheet of paper.
            </p>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Our Problem statement is following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Current System</h5>
            Presently the selection of electives is done on a sheet of paper kept in some of the labs section
            wise. The students have to first wait for the department to put up a proposed list of subjects on the
            notice board and then they decide what elective subjects they have to take.
            <a href="http://go.college.com/furtherinfo/?LinkId=404">Learn more…</a>
        </li>
        <li class="two">
            <h5>Proposed System</h5>
            There will be a website <mark>(like this one!)</mark> where the students will login with their credentials and will be able to view
            the list of proposed subjects along with description and syllabus. We could also give a probable list
            of teachers for taking that subject. Then, the students can give the preference order for the
            electives. This system will also have a feature of updating the preferences before the deadline.
            Based on this, the system will also allot the electives to students based on different criteria of
            allotment which will already be fed in the backend of the system.
            <a href="http://go.college.com/furtherinfo/?LinkId=404">Learn more…</a>
        </li>
        <li class="three">
            <h5>Techniques Used:</h5>
            ADO.NET, Rich and User Controls, Validation Controls, Web Controls and Master Pages.
            <a href="http://go.college.com/furtherinfo/?LinkId=404">Learn more…</a>
        </li>
    </ol>
</asp:Content>