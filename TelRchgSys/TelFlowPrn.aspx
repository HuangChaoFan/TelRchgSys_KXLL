<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelFlowPrn.aspx.cs" Inherits="TelRchgSys_PSL.TelFlowPrn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!--该页面提供给移动设备浏览，需加入下面这条元标签，以供移动设备调整缩放比例-->
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
    <title>流量充值</title>
</head>
<body>
<form id="frm_TelFlowPrn" runat="server">
    <asp:ScriptManager ID="scm_MngeAjaxCtrl" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="upl_PhneChekFunc" runat="server" ChildrenAsTriggers="False" UpdateMode="Conditional">
        <ContentTemplate>
            <div>
                <asp:TextBox ID="txt_LoadPhneNber" runat="server" placeholder="请输入手机号码"></asp:TextBox>
                <asp:Button ID="btn_ChekPhneNber" runat="server" Text="验证" OnClick="btn_ChekPhneNber_Click"/>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btn_ChekPhneNber" EventName="Click"/>
        </Triggers>
    </asp:UpdatePanel>
    <asp:UpdatePanel ID="upl_FoTpSeltFunc" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="False">
        <ContentTemplate>
            <div ID="div_LoadFlowType" runat="server" Visible="False">
                <div>
                    <hr/>
                </div>
                <div>
                    <asp:Button ID="btn_PrntDmstFlow" runat="server" Text="国内流量" CommandName="DmstFlow" OnCommand="btn_SeltFlowType_Click"/>
                    <asp:Button ID="btn_PrntPrvnFlow" runat="server" Text="省内流量" CommandName="PrvnFlow" OnCommand="btn_SeltFlowType_Click"/>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btn_ChekPhneNber" EventName="Click"/>
        </Triggers>
    </asp:UpdatePanel>
    <asp:UpdatePanel ID="upl_FlowSeltFunc" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="False">
        <ContentTemplate>
            <div ID="div_LoadMbilFlow" runat="server" Visible="False">
                <div>
                    <hr/>
                </div>
                <div>
                    <asp:Button ID="btn_MbilFlow_10M" runat="server" Text="10M" CommandName="MbilFlow_10M" OnCommand="btn_SeltMbilFlow_Click"/>
                    <asp:Button ID="btn_MbilFlow_30M" runat="server" Text="30M" CommandName="MbilFlow_30M" OnCommand="btn_SeltMbilFlow_Click"/>
                    <asp:Button ID="btn_MbilFlow_70M" runat="server" Text="70M" CommandName="MbilFlow_70M" OnCommand="btn_SeltMbilFlow_Click"/>
                </div>
                <div>
                    <br/>
                </div>
                <div>
                    <asp:Button ID="btn_MbilFlow_150M" runat="server" Text="150M" CommandName="MbilFlow_150M" OnCommand="btn_SeltMbilFlow_Click"/>
                    <asp:Button ID="btn_MbilFlow_500M" runat="server" Text="500M" CommandName="MbilFlow_500M" OnCommand="btn_SeltMbilFlow_Click"/>
                    <asp:Button ID="btn_MbilFlow_1G" runat="server" Text="1G" CommandName="MbilFlow_1G" OnCommand="btn_SeltMbilFlow_Click"/>
                </div>
                <div>
                    <br/>
                </div>
                <div>
                    <asp:Button ID="btn_MbilFlow_2G" runat="server" Text="2G" CommandName="MbilFlow_2G" OnCommand="btn_SeltMbilFlow_Click"/>
                </div>
            </div>
            <div ID="div_LoadTlcmFlow" runat="server" Visible="False">
                <div>
                    <hr/>
                </div>
                <div>
                    <asp:Button ID="btn_TlcmFlow_5M" runat="server" Text="5M" CommandName="TlcmFlow_5M" OnCommand="btn_SeltTlcmFlow_Click"/>
                    <asp:Button ID="btn_TlcmFlow_10M" runat="server" Text="10M" CommandName="TlcmFlow_10M" OnCommand="btn_SeltTlcmFlow_Click"/>
                    <asp:Button ID="btn_TlcmFlow_30M" runat="server" Text="30M" CommandName="TlcmFlow_30M" OnCommand="btn_SeltTlcmFlow_Click"/>
                </div>
                <div>
                    <br/>
                </div>
                <div>
                    <asp:Button ID="btn_TlcmFlow_50M" runat="server" Text="50M" CommandName="TlcmFlow_50M" OnCommand="btn_SeltTlcmFlow_Click"/>
                    <asp:Button ID="btn_TlcmFlow_100M" runat="server" Text="100M" CommandName="TlcmFlow_100M" OnCommand="btn_SeltTlcmFlow_Click"/>
                    <asp:Button ID="btn_TlcmFlow_200M" runat="server" Text="200M" CommandName="TlcmFlow_200M" OnCommand="btn_SeltTlcmFlow_Click"/>
                </div>
                <div>
                    <br/>
                </div>
                <div>
                    <asp:Button ID="btn_TlcmFlow_500M" runat="server" Text="500M" CommandName="TlcmFlow_500M" OnCommand="btn_SeltTlcmFlow_Click"/>
                    <asp:Button ID="btn_TlcmFlow_1G" runat="server" Text="1G" CommandName="TlcmFlow_1G" OnCommand="btn_SeltTlcmFlow_Click"/>
                </div>
            </div>
            <div ID="div_LoadUncmFlow" runat="server" Visible="False">
                <div>
                    <hr/>
                </div>
                <div>
                    <asp:Button ID="btn_UncmFlow_20M" runat="server" Text="20M" CommandName="UncmFlow_20M" OnCommand="btn_SeltUncmFlow_Click"/>
                    <asp:Button ID="btn_UncmFlow_50M" runat="server" Text="50M" CommandName="UncmFlow_50M" OnCommand="btn_SeltUncmFlow_Click"/>
                    <asp:Button ID="btn_UncmFlow_100M" runat="server" Text="100M" CommandName="UncmFlow_100M" OnCommand="btn_SeltUncmFlow_Click"/>
                </div>
                <div>
                    <br/>
                </div>
                <div>
                    <asp:Button ID="btn_UncmFlow_200M" runat="server" Text="200M" CommandName="UncmFlow_200M" OnCommand="btn_SeltUncmFlow_Click"/>
                    <asp:Button ID="btn_UncmFlow_500M" runat="server" Text="500M" CommandName="UncmFlow_500M" OnCommand="btn_SeltUncmFlow_Click"/>
                    <asp:Button ID="btn_UncmFlow_1G" runat="server" Text="1G" CommandName="UncmFlow_1G" OnCommand="btn_SeltUncmFlow_Click"/>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btn_ChekPhneNber" EventName="Click"/>
        </Triggers>
    </asp:UpdatePanel>
    <asp:UpdatePanel ID="upl_PricLoadFunc" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="False">
        <ContentTemplate>
            <div ID="div_LoadFlowPric" runat="server" Visible="False">
                <div>
                    <hr/>
                </div>
                <div>
                    <asp:Label ID="lbl_PrntFlowPric" runat="server" Text="售价:"></asp:Label>
                    <asp:Label ID="lbl_LoadFlowPric" runat="server"></asp:Label>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btn_ChekPhneNber" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_PrntDmstFlow" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_PrntPrvnFlow" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_MbilFlow_10M" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_MbilFlow_30M" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_MbilFlow_70M" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_MbilFlow_150M" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_MbilFlow_500M" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_MbilFlow_1G" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_MbilFlow_2G" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_TlcmFlow_5M" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_TlcmFlow_10M" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_TlcmFlow_30M" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_TlcmFlow_50M" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_TlcmFlow_100M" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_TlcmFlow_200M" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_TlcmFlow_500M" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_TlcmFlow_1G" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_UncmFlow_20M" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_UncmFlow_50M" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_UncmFlow_100M" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_UncmFlow_200M" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_UncmFlow_500M" EventName="Click"/>
            <asp:AsyncPostBackTrigger ControlID="btn_UncmFlow_1G" EventName="Click"/>
        </Triggers>
    </asp:UpdatePanel>
    <asp:UpdatePanel ID="upl_FlowRchgFunc" runat="server" ChildrenAsTriggers="False" UpdateMode="Conditional">
        <ContentTemplate>
            <div ID="div_LoadRchgButn" runat="server" Visible="False">
                <div>
                    <hr/>
                </div>
                <div>
                    <asp:Button ID="btn_SmtFowRcgOrd" runat="server" Text="订单提交" OnClick="btn_SmtFowRcgOrd_Click"/>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btn_ChekPhneNber" EventName="Click"/>
        </Triggers>
    </asp:UpdatePanel>
</form>
</body>
</html>
