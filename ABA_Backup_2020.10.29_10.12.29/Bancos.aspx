<%@ Page Title="" Language="C#" MasterPageFile="~/Clean.Master" AutoEventWireup="true" CodeBehind="Bancos.aspx.cs" Inherits="ABA.Bancos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <form id="form1" runat="server">

        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
            <AjaxSettings>
                <telerik:AjaxSetting AjaxControlID="btnAgregar">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="txtBanco" UpdatePanelCssClass="" />
                        <telerik:AjaxUpdatedControl ControlID="rgResultados" UpdatePanelCssClass="" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
            </AjaxSettings>
        </telerik:RadAjaxManager>
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js"></asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js"></asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js"></asp:ScriptReference>
            </Scripts>
        </telerik:RadScriptManager>
        <br />
        <br />
        <br />
        <div>
            <div style="top:5px">

            </div>
        </div>
         <label style="font-size: medium">Banco:&nbsp; </label>
         <telerik:RadTextBox ID="txtBanco" Runat="server" Skin="MetroTouch">
         </telerik:RadTextBox>
         <telerik:RadButton ID="btnAgregar" runat="server" Skin="MetroTouch" Text="Agregar" OnClick="btnAgregar_Click">
         </telerik:RadButton>

        <br />

        <telerik:RadGrid ID="rgBancos" runat="server" CellSpacing="0" GridLines="None" OnNeedDataSource="rgResultados_NeedDataSource" AutoGenerateColumns="False" AllowSorting="True">
            <MasterTableView DataKeyNames="ID_BANCO">
                <Columns>
                    <telerik:GridBoundColumn DataField="ID_BANCO" Display="False" FilterControlAltText="Filter ID_BANCO column" HeaderText="ID_BANCO" UniqueName="ID_BANCO">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="DESCRIPCION" FilterControlAltText="Filter Correo column" HeaderText="DESCRIPCION" UniqueName="DESCRIPCION">
                    </telerik:GridBoundColumn>
                </Columns>
            </MasterTableView>
        </telerik:RadGrid>
        <br />
  
        <br />
        <br />
        <br />
    </form>
</asp:Content>
