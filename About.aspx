<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>eS@S</h2>
    </hgroup>

    <article>
        <h4>Abstract:</h4>
        <p>        
            The proposed system here is to enable the students to select their branch elective without the need
            of coming to any specific place and writing on a sheet of paper.
        </p>

        <h4>Current System:</h4>
        <p>        
            Presently the selection of electives is done on a sheet of paper kept in some of the labs section
            wise. The students have to first wait for the department to put up a proposed list of subjects on the
            notice board and then they decide on to what elective subjects they have to take.
        </p>

        <h4>Proposed System:</h4>
        <p>        
            There will be a website where the students will login with their credentials and will be able to view
            the list of proposed subjects along with description and syllabus. We could also give a probable list
            of teachers for taking that subject. Then, the students can give the preference order for the
            electives. This system will also have a feature of updating the preferences before the deadline.
            Based on this, the system will also allot the electives to students based on different criteria of
            allotment which will already be fed in the backend of the system.
        </p>
        <h4>Submitted By:</h4>
        <p>
            Abhishek Bagchi<br />
            Anindya Dutta
        </p>
    </article>

    <aside>
        <h3>Disadvantages of the Current System:</h3>
        <ol>
            <li>Completely manual process.</li>
            <li>Unsecure</li>
            <li>Updating the list is Problem</li>
            <li>Can be changed by anyone</li>
            <li>All entries have to manually put up on the computer.</li>
        </ol>
    </aside>
</asp:Content>