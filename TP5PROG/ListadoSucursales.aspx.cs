using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5PROG
{
    public partial class ListadoSucursales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ConexionBase conexion = new ConexionBase();
                conexion.MostrarTodo(gvSucursales);
            }
        }

        protected void btnTodos_Click(object sender, EventArgs e)
        {
            ConexionBase conexion = new ConexionBase();
            conexion.MostrarTodo(gvSucursales);
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            ConexionBase con = new ConexionBase();
            con.filtrarGrid(gvSucursales, txtIdSucursal);
            txtIdSucursal.Text = "";
        }
    }
}