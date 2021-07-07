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
                                    <input type="text" name="inputBox" placeholder="Username"/>
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
                                    <input type="text" name="inputBox" placeholder="Password"/>
                                </div>

                            </div>
                        </td>
                    </tr>
                </table>

                <div class="button_login"> 
                    Login
                </div>

                <div class="button_register"> 
                    Register
                </div>



        </div>

    </div>
</asp:Content>
