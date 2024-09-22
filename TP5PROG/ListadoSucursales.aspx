<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursales.aspx.cs" Inherits="TP5PROG.ListadoSucursales" %>

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
            font-size: large;
            width: 236px;
        }
        .auto-style19 {
            width: 236px;
        }
        .auto-style20 {
            width: 184px;
        }
        .auto-style21 {
            width: 133px;
        }
        .auto-style22 {
            width: 133px;
            text-align: right;
        }
        .auto-style23 {
            text-align: justify;
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
        <table class="auto-style1">
            <tr>
                <td class="auto-style18"><strong>LISTADO DE SUCURSALES<br />
                    </strong></td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">Busqueda ingrese ID sucursal:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="txtIdSucursal" runat="server" Width="170px"></asp:TextBox>
                </td>
                <td class="auto-style22">
                    <asp:Button ID="btnFiltrar" runat="server" OnClick="btnFiltrar_Click" Text="Filtrar" />
                </td>
                <td>
                    <asp:Button ID="btnTodos" runat="server" OnClick="btnTodos_Click" Text="Mostrar todo" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div class="auto-style23">
            <asp:GridView ID="gvSucursales" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
