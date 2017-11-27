<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Counter.ascx.cs" Inherits="PRDIDBSystem.web_Control.Counter" %>
<div class="irpc-vmenublock clearfix">
    <div class="irpc-vmenublockheader">
        <h3 class="t" style="text-align: center">Online Status</h3>
    </div>
    <div class="irpc-vmenublockcontent">
        <p style="font-weight: 700; text-align: center">จำนวนผู้ใช้ทั้งหมด :&nbsp;<asp:Literal ID="ltrTotalUser" runat="server"></asp:Literal> &nbsp;คน</p>
        <p style="font-weight: 700; text-align: center">
            Online :&nbsp;<asp:Literal ID="ltrOnline" runat="server"></asp:Literal>
            &nbsp;คน
        </p>
        <%--<ul class="irpc-vmenu">
            <li style="font-weight: 700; text-align: center;">
                <a href="#">จำนวนผู้ใช้ทั้งหมด :
                    <asp:Literal ID="ltrTotalUser" runat="server"></asp:Literal></a>
            </li>
            <li style="font-weight: 700; text-align: center;">
                <a href="#">Online :
                    <asp:Literal ID="ltrOnline" runat="server"></asp:Literal>
                    คน</a>
            </li>
        </ul>--%>
    </div>
</div>
