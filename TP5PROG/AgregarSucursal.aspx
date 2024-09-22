<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5PROG.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 226px;
        }
        .auto-style3 {
            width: 226px;
            height: 23px;
            font-size: xx-large;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 226px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style8 {
            width: 226px;
            text-align: center;
            height: 20px;
        }
        .auto-style9 {
            text-align: center;
            width: 269px;
            height: 20px;
        }
        .auto-style10 {
            height: 23px;
            width: 269px;
        }
        .auto-style11 {
            width: 269px;
        }
        .auto-style12 {
            height: 26px;
            width: 269px;
        }
        .auto-style13 {
            text-align: center;
            width: 261px;
            height: 20px;
        }
        .auto-style14 {
            height: 23px;
            width: 261px;
        }
        .auto-style15 {
            width: 261px;
        }
        .auto-style16 {
            height: 26px;
            width: 261px;
        }
        .auto-style17 {
            height: 20px;
        }
        .auto-style18 {
            width: 226px;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">
                    <asp:HyperLink ID="hlAgregarSuc" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar sucursal</asp:HyperLink>
                </td>
                <td class="auto-style9">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listar sucursales</asp:HyperLink>
                </td>
                <td class="auto-style13">
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar sucursales</asp:HyperLink>
                </td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>GRUPO N°1<br />
                    </strong></td>
                <td class="auto-style10"></td>
                <td class="auto-style14"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Agregar sucursal</strong></td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Nombre sucursal:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtSucursal" runat="server" ValidationGroup="1"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="rfvSuc" runat="server" ControlToValidate="txtSucursal" ValidationGroup="1">No puede dejar este campo en blanco</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Descripcion:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtDesc" runat="server" Height="34px" ValidationGroup="1"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="rfvDesc" runat="server" ControlToValidate="txtDesc" ValidationGroup="1">No puede dejar este campo en blanco</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Provincia: </td>
                <td class="auto-style11">
                    <asp:DropDownList ID="ddlProvincias" runat="server" Height="16px" Width="126px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Direccion: </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtDireccion" runat="server" ValidationGroup="1"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ValidationGroup="1">No puede dejar este campo en blanco</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" ValidationGroup="1" />
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style12"></td>
                <td class="auto-style16"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblConfirmacion" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
