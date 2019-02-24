<%@ Page Title="The BMI Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BMI_Calc._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="img">
        <asp:Image ID="headerImage" runat="server" ImageUrl="content\BMI_photo1.png" alt ="The BMI Calculator Page" CssClass="align-self-xl-auto" Height="200px" ImageAlign="Top" Width="100%" />
    </div>

    <div class="jumbotron">
        <h1>Welcome to the Body Mass Index (BMI) Calculator</h1>
        <p class="h5">BMI is a measurement of body fat based on height and weight that applies to both men and women between the ages of 18 and 65 years. Please enter your name, height and weight into the fields below to get your BMI.</p>
        <p class="lead">
            <asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." Font-Size="Smaller" ForeColor="#FF5050" CssClass="alert-danger"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="nameRegularExpressionValidator" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter valid characters." Font-Size="Smaller" ForeColor="#FF5050" ValidationExpression="^[a-zA-Z]*\s?[a-zA-Z]*$" CssClass="alert-danger"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="AgeRequiredFieldValidator" runat="server" ControlToValidate="txtAge" ErrorMessage="Age is required." Font-Size="Smaller" ForeColor="#FF5050" CssClass="alert-danger"></asp:RequiredFieldValidator>
        &nbsp;<asp:RangeValidator ID="AgeRangeValidator" runat="server" ControlToValidate="txtAge" ErrorMessage="You must be 18 to 65 to use this calculator." Font-Size="Smaller" ForeColor="#FF5050" Type="Integer" MaximumValue="65" MinimumValue="18" CssClass="alert-danger"></asp:RangeValidator>
        </p>
        <p class="lead">
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" Width="225px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label>
            <asp:TextBox ID="txtAge" runat="server" Width="75px"></asp:TextBox>
            </p>
        <p class="lead">
            <asp:RequiredFieldValidator ID="HeightFtRequiredFieldValidator" runat="server" ControlToValidate="txtHeightFt" ErrorMessage="Height in feet is required." Font-Size="Smaller" ForeColor="#FF5050" CssClass="alert-danger"></asp:RequiredFieldValidator>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHeightIn" CssClass="alert-danger" ErrorMessage="Height in inches is required." Font-Size="Smaller" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="WeightRequiredFieldValidator" runat="server" ControlToValidate="txtWeight" ErrorMessage="Weight is required." Font-Size="Smaller" ForeColor="#FF5050" CssClass="alert-danger"></asp:RequiredFieldValidator>
        </p>
        <p class="lead">
            <asp:Label ID="Label2" runat="server" Text="Height (ft)"></asp:Label>
            <asp:TextBox ID="txtHeightFt" runat="server" Width="50px"></asp:TextBox>
&nbsp;(in) <asp:TextBox ID="txtHeightIn" runat="server" Width="49px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Weight (lbs) <asp:TextBox ID="txtWeight" runat="server" Width="75px"></asp:TextBox>
        </p>
        <p class="lead">
            <asp:RangeValidator ID="HeightFtRangeValidator" runat="server" ControlToValidate="txtHeightFt" ErrorMessage="Valid range is 3 to 8 feet." Font-Size="Smaller" ForeColor="#FF5050" Type="Integer" MaximumValue="8" MinimumValue="3" CssClass="alert-danger"></asp:RangeValidator>
            &nbsp;&nbsp;
            <asp:RangeValidator ID="HeightInRangeValidator" runat="server" ControlToValidate="txtHeightIn" ErrorMessage="Valid range is 0 to 11 inches." Font-Size="Smaller" ForeColor="#FF5050" Type="Integer" MaximumValue="11" MinimumValue="0" CssClass="alert-danger"></asp:RangeValidator>
        </p>
        <p class="lead">
            <asp:Button ID="btnCalculate" runat="server" OnClick="btnCalculate_Click" Text="Calculate BMI" Width="250px" CssClass="btn-outline-dark" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" CssClass="btn-outline-dark" OnClick="btnClear_Click" Text="Clear Form" Width="250px" />
        </p>
        <p class="lead">
            <asp:TextBox ID="txtBMIoutput" runat="server" ReadOnly="True" Width="527px" CssClass="text-success"></asp:TextBox>
        </p>
        <p class="lead">
            &nbsp;</p>
    </div>

</asp:Content>
