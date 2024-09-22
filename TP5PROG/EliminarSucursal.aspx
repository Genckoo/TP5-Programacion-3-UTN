<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="TP5PROG.EliminarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
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
        .auto-style13 {
            text-align: center;
            width: 261px;
            height: 20px;
        }
        .auto-style17 {
            height: 20px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style18 {
            font-size: x-large;
            width: 268px;
        }
        .auto-style19 {
            width: 268px;
        }
        .auto-style20 {
            width: 173px;
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
        </table>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style18"><strong>ELIMINAR SUCURSAL<br />
                        </strong></td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">Ingresar ID sucursal:</td>
                    <td class="auto-style20">
                        <asp:TextBox ID="txtIdSucursal" runat="server" ValidationGroup="1" Width="163px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" ValidationGroup="1" />
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revNumerico" runat="server" ControlToValidate="txtIdSucursal" ValidationExpression="^\d+$" ValidationGroup="1">Solo valores numericos</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="lblConfirmacion" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
