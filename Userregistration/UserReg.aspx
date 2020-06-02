<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserReg.aspx.cs" Inherits="Userregistration.UserReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 129px;
        }
        .auto-style2 {
            width: 202px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
              

                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelFirstName" runat="server" Text="First Name"></asp:Label>
                        
                        </td>
                    <td colspan="2" class="auto-style2">
                        <asp:TextBox ID="firstname" runat="server" ></asp:TextBox>
                        <asp:Label Text="*" runat="server" ForeColor="red" />
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Labellast_name" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td colspan="2" class="auto-style2">
                        <asp:TextBox ID="lastname" runat="server" ></asp:TextBox>
                        <asp:Label Text="*" runat="server" ForeColor="red" />
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="gender" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td colspan="2" class="auto-style2">
                        <asp:DropDownList id="ddlgender" DataTextField="gender" runat="server">
                            <asp:ListItem Text="Male" />
                            <asp:ListItem Text="Female" />
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelContact" runat="server" Text="Contact"></asp:Label>
                    </td>
                    <td colspan="2" class="auto-style2">
                        <asp:TextBox ID="contact" runat="server" ></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelAddress" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td colspan="2" class="auto-style2">
                        <asp:TextBox ID="address" runat="server" ></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td colspan="2" class="auto-style2">
                        <asp:TextBox ID="password" runat="server"  ReadOnly="False"></asp:TextBox>
                        <asp:Label Text="*" runat="server" ForeColor="red" />
                    </td>
                </tr>
                  <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td colspan="2" class="auto-style2">
                        <asp:TextBox ID="cpassword" runat="server" ></asp:TextBox>
                        <asp:Label Text="*" runat="server" ForeColor="red" />
                    </td>
                </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <asp:Button Text="Submit" runat="server" OnClick="submit" />
                </td>
            </tr>
                <tr>
                <td></td>
                <td colspan="2">
                    <asp:Label Text="" ID="successmessage" runat="server" ForeColor="green" /> 
                </td>
            </tr>
                <tr>
                <td></td>
                <td colspan="2">
                    <asp:Label Text="" ID="errormessage" runat="server" ForeColor="red" /> 
                </td>
            </tr>
            </table>
            
        </div>
      
    </form>
</body>
</html>
