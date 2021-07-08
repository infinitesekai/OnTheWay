<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="OnTheWay.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div
    style="width:100%; position:relative;top:1.5px;padding-right:30px;height:350px; background-color:white;box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.1), 0 2px 2px 0 rgba(0, 0, 0, 0.1);">
    <table width="100%">
      <tr>
        <td width="fit-content">
          <table width="100%">
            <tr>
              <td
                style="font-weight:900;text-align:left;font-size:32px;padding-top:10px;padding-left:50px;font-family:'Space Grotesk';color:#13227A">
                Dear all,
                Your personal assistance is here!<br>
                On The Way 24 hours
              </td>
            </tr>

            <tr>
              <td
                style="text-align:left;font-size:20px;padding-left:50px;font-family:'Space Grotesk';color:#707070">
                On The Way is an assistance provider platform for all residents<br>
                We aim to connect those who need assistance and those who are willing to help.<br>
                If you are <b>in need</b>, post your <b>requests </b> here!<br>
                If you are <b>bored</b>, kindly lend your <b>helping hand</b> here!<br>

                

              </td>
            </tr>
          </table>
        </td>

        <td width="35%">
          <img src="./images/Welcome.gif"
            style="position:relative;left:80px;padding-right:15px;width:300px;height:300px" />
        </td>

      </table>
  </div>

     <div
    style=" background-color: white; margin:0 auto; margin-right:0px; box-shadow:0px 4px 5px rgba(0, 0, 0, 0.1); height:350px;text-align:center;">
    <div class="Title-font" style="padding-top:25px;margin:0px auto; display:inline-block; text-align:center;">
      <b>Services</b>
    </div>

    <div style="margin:5px auto; width: 60%; text-align:center; padding:10px;">
      <table width="100%" cellpadding="30px">
        <tr>
          <td width="25%">
            <div class="Services_box">
              <div style="margin:10px auto; text-align:center; padding:5px;">
                <img src="images/vacuumCleaner.png" style="height:90px; width:90px;">
              </div>

              <div class="Services_font">
                Cleaning
              </div>
            </div>
          </td>

          <td width="25%">
            <div class="Services_box">
              <div style="margin:10px auto; text-align:center; padding:5px;">
                <img src="images/print.png" style="height:90px; width:90px;">
              </div>

              <div class="Services_font">
                Printing
              </div>
            </div>
          </td>

          <td width="25%">
            <div class="Services_box">
              <div style="margin:10px auto; text-align:center; padding:5px;">
                <img src="images/running-solid.png" style="height:90px; width:90px;">
              </div>

              <div class="Services_font">
                Errands
              </div>
            </div>
          </td>

        </tr>
      </table>
    </div>

</asp:Content>
