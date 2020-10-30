<%@ Page Title="" Language="C#" MasterPageFile="~/Clean.Master" AutoEventWireup="true" CodeBehind="Resultados.aspx.cs" Inherits="ABA.Resultados" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">

        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
            <AjaxSettings>
                <telerik:AjaxSetting AjaxControlID="cboEncuesta">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="rgResultados" UpdatePanelCssClass="" />
                        <telerik:AjaxUpdatedControl ControlID="rgResultados0" UpdatePanelCssClass="" />
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
        <telerik:RadToolBar ID="rtAdmin" runat="server" OnButtonClick="rtAdmin_ButtonClick" SingleClick="None" Skin="MetroTouch" Width="100%">
            <Items>
                <telerik:RadToolBarButton runat="server" NavigateUrl="Bancos.aspx" Text="Nuevo Banco">
                </telerik:RadToolBarButton>
                <telerik:RadToolBarButton runat="server" NavigateUrl="Encuestas.aspx" Text="Nueva Encuesta">
                </telerik:RadToolBarButton>
                <telerik:RadToolBarButton runat="server" Text="Exportar Resultados">
                </telerik:RadToolBarButton>
            </Items>
        </telerik:RadToolBar>

            <telerik:RadComboBox ID="cboEncuesta" runat="server" Skin="MetroTouch" EmptyMessage="Seleccionar Una Encuesta" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="cboEncuesta_SelectedIndexChanged"></telerik:RadComboBox>

        <br />

        <telerik:RadGrid ID="rgResultados" runat="server" CellSpacing="0" GridLines="None" OnNeedDataSource="rgResultados_NeedDataSource" AutoGenerateColumns="False" AllowSorting="True">
            <MasterTableView DataKeyNames="ID_Encuesta,ID_Seq">
                <Columns>
                    <telerik:GridBoundColumn DataField="ID_Seq" Display="False" FilterControlAltText="Filter ID_Seq column" HeaderText="ID_Seq" UniqueName="ID_Seq">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="NombreInts" FilterControlAltText="Filter NombreInts column" HeaderText="Institucion" UniqueName="NombreInts">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Nombre" FilterControlAltText="Filter NombreyCargo column" HeaderText="Responsable" UniqueName="NombreyCargo">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Telefono" FilterControlAltText="Filter Telefono column" HeaderText="Telefono" UniqueName="Telefono">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Correo" FilterControlAltText="Filter Correo column" HeaderText="Correo" UniqueName="Correo">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Fecha" FilterControlAltText="Filter Fecha column" HeaderText="Fecha" UniqueName="Fecha">
                    </telerik:GridBoundColumn>
                </Columns>
            </MasterTableView>
        </telerik:RadGrid>
        <br />
        <div hidden="hidden">
            <telerik:RadGrid ID="rgResultados0" runat="server" CellSpacing="0" GridLines="None" OnNeedDataSource="rgResultados_NeedDataSource">
                <MasterTableView DataKeyNames="ID_Encuesta,ID_Seq">
                </MasterTableView>
            </telerik:RadGrid>
        </div>
        <br />
        <br />
        <br />
    </form>
</asp:Content>
