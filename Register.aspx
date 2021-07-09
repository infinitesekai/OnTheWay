<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OnTheWay.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent2" runat="server">
    <div style="margin: 0 auto; width: 1000px;">
        <div class="box_form" >
            <div style="padding: 30px; padding-bottom: 5px; font-weight: 900; font-family:'Space Grotesk'; color: #13227A; font-size: 1.5em;">
                <b>Register</b>
            </div>
            <div style="margin-left:30px ;width:85%; border-bottom: 2px solid #707070; ">
            </div>
             <div style="margin:0 auto; width: 490px;">
                <table width="100%" cellpadding="5px">
                    <tr>
                        <td>
                            <div style="margin: 24px; margin-top: 1px; margin-bottom: 5px;">
                                 <asp:TextBox ID="firstName" runat="server" BackColor="#F0EDED" Font-Names="Space Grotesk" Font-Size="15px" ForeColor="#707070" Height="40px" Width="410px" placeholder="First Name" margin="2px auto" ></asp:TextBox>
                               
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorfname" 
                                    runat="server" ErrorMessage="First name required" Text="*"
                                    ControlToValidate="firstName" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                             </div>

                        </td>

                    </tr>
                    <tr>
                        <td>
                            <div style="margin: 24px; margin-top: 1px; margin-bottom: 5px;">
                                <asp:TextBox ID="lastName" runat="server" BackColor="#F0EDED" Font-Names="Space Grotesk" Font-Size="15px" ForeColor="#707070" Height="40px" Width="410px" placeholder="Last Name" margin="2px auto" ></asp:TextBox>
                                   
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorlname" 
                                    runat="server" ErrorMessage="Last name required" Text="*"
                                    ControlToValidate="lastName" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                            </div>

                        </td>
                     </tr>


                    <tr>
                        <td>
                            <div style="margin: 24px; margin-top: 1px; margin-bottom: 5px;">
                                <asp:TextBox ID="email" runat="server" BackColor="#F0EDED" Font-Names="Space Grotesk" Font-Size="15px" ForeColor="#707070" Height="40px" Width="410px" placeholder="E-mail" margin="2px auto" ></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" 
                                    runat="server" ErrorMessage="Email required" Text="*"
                                    ControlToValidate="email" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <div style="margin: 24px; margin-top: 1px; margin-bottom: 5px;">
                                <asp:TextBox ID="password" runat="server" BackColor="#F0EDED" Font-Names="Space Grotesk" Font-Size="15px" ForeColor="#707070" Height="40px" Width="410px" placeholder="Password" margin="2px auto" ></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" 
                                    runat="server" ErrorMessage="Password required" Text="*"
                                    ControlToValidate="password" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <div style="margin: 24px; margin-top: 1px; margin-bottom: 5px;">
                                <asp:TextBox ID="re_pass" runat="server" BackColor="#F0EDED" Font-Names="Space Grotesk" Font-Size="15px" ForeColor="#707070" Height="40px" Width="410px" placeholder="Retype password" margin="2px auto" ></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" 
                                    runat="server" ErrorMessage="Re-type Password required" Text="*"
                                    ControlToValidate="re_pass" ForeColor="Red" 
                                    Display="Dynamic"></asp:RequiredFieldValidator>

                                 <asp:CompareValidator ID="CompareValidatorPassword" runat="server" 
                                    ErrorMessage="Password and Confirm Password must match"
                                    ControlToValidate="re_pass" ForeColor="Red" 
                                    ControlToCompare="password" Display="Dynamic"
                                    Type="String" Operator="Equal" >
                                    </asp:CompareValidator>
                            </div>
                        </td>
                    </tr>
                </table>
              </div>
           
             <div class="button_register">

                    <asp:Label ID="errorMessage" runat="server" Font-Size="15pt" Font-Names="Space Grotesk" ForeColor="Red"></asp:Label><br />

                </div>

                <div class="button_register"> 
                    

                    <asp:Button ID="btn_register" runat="server" Text="Register" BackColor="#13227A" BorderStyle="None" Font-Names="Space Grotesk" Font-Size="15pt" ForeColor="White" OnClick="btn_register_Click" Height="50px" />

                    
                </div>

               

        </div>
    

    </div>
</asp:Content>
