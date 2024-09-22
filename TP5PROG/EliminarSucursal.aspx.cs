using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5PROG
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string consulta = "DELETE FROM SUCURSAL WHERE ID_SUCURSAL=" + txtIdSucursal.Text + "AND ID_SUCURSAL IS NOT NULL";
            ConexionBase cn = new ConexionBase(); 
            int filasAfectadas=cn.EjecutarConsulta(consulta);

            if(filasAfectadas > 0)
            {
                lblConfirmacion.ForeColor = System.Drawing.Color.Green;
                lblConfirmacion.Text = "Se ha eliminado correctamente";
            }
            else
            {
                lblConfirmacion.ForeColor=System.Drawing.Color.Red;
                lblConfirmacion.Text = "No se ha podido eliminar, no existe";
            }

        }

      
    }
}