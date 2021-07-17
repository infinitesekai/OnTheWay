<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnTheWay.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent2" runat="server">
    <style>
            .button_register{
                background-color:#13227A;
                color:white; 
                font-family: Space Grotesk;
                font-weight:800; 
                font-size:1.2em;
                margin: 20px auto;
                padding:10px; 
                text-align:center;  
                border-radius: 5px;
                cursor: pointer;
            }
            .button_register:hover {
                background-color: #707070;
            }

    </style>
      <div style="margin: 0 auto; width: 1000px;">
        <div class="login_box_form" >
                <table width="80%" style="padding: 50px; margin-bottom: 3px; margin: 50px auto 20px; padding-bottom: 20px; ">
                    <tr class="form_field" style="padding:15px; display: inline-block;">
                        <td style="text-align:center">
                            <div >
                                    <img src="/images/profile.png" style="height: 48px; width:48px">
                                </div>
                            </td>
                        <td>
                                   <asp:TextBox ID="login_email" runat="server" BackColor="#F0EDED" Font-Names="Space Grotesk" Font-Size="20px" ForeColor="#707070" Height="55px" Width="300px" placeholder="Email" margin="2px auto" ></asp:TextBox>
                        </td>
                    </tr>
                        <tr class="form_field" style="padding:15px; display: inline-block;">
                        <td style="text-align:center">
                            <div >
                                    <img src="images/lock.png"/ style="height: 48px; width:48px">
                                </div>
                            </td>
                        <td>
                                   <asp:TextBox ID="login_password" runat="server" TextMode="Password" BackColor="#F0EDED" Font-Names="Space Grotesk" Font-Size="20px" ForeColor="#707070" Height="55px" Width="300px" BorderStyle="None" placeholder="Password"></asp:TextBox>
                        </td>
                    </tr>

                </table>

            <div style="margin:auto; position:absolute; left:41%;">
                <asp:Button ID="btn_login" runat="server" Text="Login" Font-Names="Space Grotesk" ForeColor="White" CssClass="button_login" OnClick="Btn_login_Click" Height="50px" Width="244px" />
                <br />
                <asp:Button ID="registerbtn" runat="server" Text="Register" Class="button_register" OnClick="Btn_newregister_Click" Height="50px" Width="244px" />
            </div>
                    


        </div>

    </div>
</asp:Content>
