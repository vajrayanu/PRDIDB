<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PSidebar1.ascx.cs" Inherits="PRDIDBSystem.web_Control.PSidebar1" %>

<div class="irpc-block clearfix">
    <div class="irpc-blockheader">
        <h3 class="t">Profile User</h3>
    </div>
    <div class="irpc-blockcontent">
        <p>Usename : <span style="font-weight: bold;"><asp:Literal ID="ltrUserName2" runat="server"></asp:Literal></span><br>
        </p>
        <p>Name : <span style="font-weight: bold;"><asp:Literal ID="ltrName2" runat="server"></asp:Literal></span></p>
        <p>Position : <span style="font-weight: bold;"><asp:Literal ID="ltrPosition2" runat="server"></asp:Literal></span></p>
        <p>Type : <span style="font-weight: bold;"><asp:Literal ID="ltrType2" runat="server"></asp:Literal></span></p>
       <%-- <p>Last Login : <span style="font-weight: bold;">09/06/2013 15:30</span></p>--%>
    </div>
</div>