using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TP5PROG
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlProvincias.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
                ConexionBase conexion = new ConexionBase();
                conexion.CargarProvincias(ddlProvincias);
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            string consulta = "INSERT INTO SUCURSAL(NombreSucursal, DescripcionSucursal, id_ProvinciaSucursal, DireccionSucursal) " + "VALUES ('" + txtSucursal.Text + "', '" + txtDesc.Text + "', " + ObtenerID() + ", '" + txtDireccion.Text + "')";


            ConexionBase con = new ConexionBase();
           int filasAfectadas = con.EjecutarConsulta(consulta);
            if (filasAfectadas > 0)
            {
                lblConfirmacion.ForeColor = System.Drawing.Color.Green;
                lblConfirmacion.Text = "Sucursal cargada con exito";
            }
            else
            {
                lblConfirmacion.ForeColor= System.Drawing.Color.Red;
                lblConfirmacion.Text = "No se ha podido cargar";
            }
            LimpiarCampos();
        }

        public int ObtenerID()
        {
            int valorProvincia = 0;

            valorProvincia = ddlProvincias.SelectedIndex;

            return valorProvincia; 
        }

        public void LimpiarCampos()
        {
            txtSucursal.Text = "";
            txtDesc.Text = "";
            txtDireccion.Text = "";
        }

    }


}

