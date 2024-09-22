using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Drawing.Printing;
using System.Reflection;

namespace TP5PROG
{
    public class ConexionBase
    {
        private string Ruta = "Data Source=DESKTOP-1M7DOR6\\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True;TrustServerCertificate=True";


        public int EjecutarConsulta(string consulta)
        {
            SqlConnection cn = new SqlConnection(Ruta);
            cn.Open();
            SqlCommand cmd = new SqlCommand(consulta, cn);

            int filasAfectadas = cmd.ExecuteNonQuery();
            cn.Close();

            return filasAfectadas;

        }

        public void filtrarGrid(GridView gvSucursales, TextBox txtIdSucursales)
        {
            SqlConnection cn =new SqlConnection(Ruta); 
            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT ID_SUCURSAL , NOMBRESUCURSAL AS NOMBRE, DESCRIPCIONSUCURSAL AS DESCRIPCION,DESCRIPCIONPROVINCIA AS PROVINCIA, DIRECCIONSUCURSAL AS DIRECCION FROM SUCURSAL INNER JOIN PROVINCIA ON SUCURSAL.Id_ProvinciaSucursal = PROVINCIA.id_Provincia WHERE ID_SUCURSAL = @SucursalFiltro", cn);
            cmd.Parameters.AddWithValue("SucursalFiltro", txtIdSucursales.Text);
            SqlDataReader rd = cmd.ExecuteReader();
            gvSucursales.DataSource = rd;
            gvSucursales.DataBind();
            cn.Close();
            
        }
        public void MostrarTodo(GridView gvSucursales)
        {
            SqlConnection cn = new SqlConnection(Ruta);
            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT ID_SUCURSAL, NOMBRESUCURSAL AS NOMBRE, DESCRIPCIONSUCURSAL AS DESCRIPCION,DESCRIPCIONPROVINCIA AS PROVINCIA, DIRECCIONSUCURSAL AS DIRECCION  FROM SUCURSAL INNER JOIN PROVINCIA ON SUCURSAL.Id_ProvinciaSucursal = PROVINCIA.id_Provincia",cn);
            SqlDataReader r = cmd.ExecuteReader();
            gvSucursales.DataSource= r;
            gvSucursales.DataBind();
            cn.Close();
        }

        public void CargarProvincias(DropDownList ddlProvincia)
        {
            SqlConnection conexion1 = new SqlConnection(Ruta);
            conexion1.Open();
            SqlDataAdapter adapter = new SqlDataAdapter("Select * from Provincia", conexion1);

            DataSet ds = new DataSet();

            adapter.Fill(ds, "Provincia");

            foreach (DataRow dr in ds.Tables["Provincia"].Rows)
            {
                ddlProvincia.Items.Add(dr["Id_Provincia"] + "- " + dr["DescripcionProvincia"]);
            }

            conexion1.Close();
        }
    }
}