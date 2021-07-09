<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnTheWay.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent2" runat="server">
      <div style="margin: 0 auto; width: 1000px;">
        <div class="login_box_form" >
                <table width="100%" style="padding: 50px; margin-bottom: 3px; margin: 0 auto; padding-bottom: 20px; ">
                    <tr>
                        <td>
                            <div class="form_field">
                                <div style="padding:5px; display: inline-block;">
                                    <img src="/images/profile.png" style="height: 48px; width:48px">
                                </div>

                                <div style="float: right;">
                                   <asp:TextBox ID="login_email" runat="server" BackColor="#F0EDED" Font-Names="Space Grotesk" Font-Size="20px" ForeColor="#707070" Height="55px" Width="300px" placeholder="Email" margin="2px auto" ></asp:TextBox>
                                </div>

                            </div>
                        </td>
                    </tr>
                        


                    <tr>
                        <td>
                            <div class="form_field">
                                <div style="padding:5px; display: inline-block;">
                                    <img src="images/lock.png"/ style="height: 48px; width:48px">
                                </div>

                                <div style="float: right;">
                                    <asp:TextBox ID="login_password" runat="server" BackColor="#F0EDED" Font-Names="Space Grotesk" Font-Size="20px" ForeColor="#707070" Height="55px" Width="300px" placeholder="Password" margin="2px auto" ></asp:TextBox>
                                </div>

                            </div>
                        </td>
                    </tr>
                </table>

                <div class="button_login"> 
                    <asp:Button ID="btn_login" runat="server" Text="Login" BackColor="#13227A" BorderStyle="None" Font-Names="Space Grotesk" Font-Size="15pt" ForeColor="White" OnClick="Btn_login_Click" />
                </div>

                <div class="button_register"> 
                  <asp:Button ID="registerbtn" runat="server" Text="Register" BackColor="#13227A" BorderStyle="None" Font-Names="Space Grotesk" Font-Size="15pt" ForeColor="White" OnClick="Btn_newregister_Click" />

                </div>



        </div>

    </div>
</asp:Content>
