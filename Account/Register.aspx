<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Use the form below to create a new account.</h2>
    </hgroup>

    <asp:CreateUserWizard runat="server" ID="RegisterUser" ViewStateMode="Disabled" OnCreatedUser="RegisterUser_CreatedUser" RequireEmail="false">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
            <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
                <ContentTemplate>
                    <p class="message-info">
                        Passwords are required to be a minimum of <%: Membership.MinRequiredPasswordLength %> characters in length.
                    </p>

                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                    <fieldset>
                        <legend>Registration Form</legend>
                        <ol>
                            <li>
                                <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName">Name</asp:Label>
                                <asp:TextBox runat="server" ID="UserName" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="regno">Registration No.</asp:Label>
                                <asp:TextBox runat="server" ID="regno" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="regno"
                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="college">College </asp:Label>
                                <asp:Label id="college" runat="server"> Manipal Institute of Technology, Manipal</asp:Label>
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="branch">Branch</asp:Label>
                                <asp:DropDownList runat="server" ID="branch">
                                    <asp:ListItem>AE</asp:ListItem>
                                    <asp:ListItem>AU</asp:ListItem>
                                    <asp:ListItem>BT</asp:ListItem>
                                    <asp:ListItem>BM</asp:ListItem>
                                    <asp:ListItem>CH</asp:ListItem>
                                    <asp:ListItem>CS</asp:ListItem>
                                    <asp:ListItem>CV</asp:ListItem>
                                    <asp:ListItem>EE</asp:ListItem>
                                    <asp:ListItem>EC</asp:ListItem>
                                    <asp:ListItem>IT</asp:ListItem>
                                    <asp:ListItem>IC</asp:ListItem>
                                    <asp:ListItem>IP</asp:ListItem>
                                    <asp:ListItem>IM</asp:ListItem>
                                    <asp:ListItem>MM</asp:ListItem>
                                    <asp:ListItem>MT</asp:ListItem>
                                    <asp:ListItem>PT</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="branch"
                                    CssClass="field-validation-error" ErrorMessage="The Branch field is required." />
                            </li>
                            <li>
                                <asp:Label runat="server" Text="CGPA" AssociatedControlID="cgpa"/>
                                <asp:TextBox runat="server" ID="cgpa" />
                                <asp:RangeValidator runat="server" ControlToValidate="cgpa" Type="Double" MinimumValue="0" MaximumValue="10" ErrorMessage="CGPA has to be between 0 and 10"/>
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="password">Password</asp:Label>
                                <asp:TextBox runat="server" ID="password" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="password"
                                    CssClass="field-validation-error" ErrorMessage="The password field is required." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="cpassword">Confirm password</asp:Label>
                                <asp:TextBox runat="server" ID="cpassword" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="cpassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                <asp:CompareValidator runat="server" ControlToCompare="password" ControlToValidate="cpassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                            </li>
                        </ol>
                        <asp:Button runat="server" onclick="RegisterUser_CreatedUser" Text="Register" />
                    </fieldset>
                </ContentTemplate>
                <CustomNavigationTemplate />
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>