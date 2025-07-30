<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_register.aspx.cs" Inherits="Bus_booking_system.User.user_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Style/register.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <div class="register-form">
                <h2>Register Your Account</h2>

                <div class="form-group">
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="input" placeholder="Full Name" />
                </div>

                <div class="form-row">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="input" placeholder="Email" TextMode="Email" />
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="input" placeholder="Phone" TextMode="Phone" />
                </div>

                <div class="form-row">
                    <asp:DropDownList ID="ddlCity" runat="server" CssClass="input">
                        <asp:ListItem Text="Select City" Value="" />
                        <asp:ListItem Text="Ahmedabad" />
                        <asp:ListItem Text="Surat" />
                        <asp:ListItem Text="Vadodara" />
                        <asp:ListItem Text="Rajkot" />
                    </asp:DropDownList>

                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="input">
                        <asp:ListItem Text="Select Gender" Value="" />
                        <asp:ListItem Text="Male" />
                        <asp:ListItem Text="Female" />
                        <asp:ListItem Text="Other" />
                    </asp:DropDownList>

                    <asp:TextBox ID="txtAge" runat="server" CssClass="input" placeholder="Age" TextMode="Number" />
                </div>

                <div class="form-row">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="input" placeholder="Password" TextMode="Password" />
                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="input" placeholder="Confirm Password" TextMode="Password" />
                </div>

                <div class="form-row">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn" CausesValidation="False" OnClientClick="this.form.reset(); return false;" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
