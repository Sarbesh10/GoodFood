using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace goodfood
{
    public partial class Dish_Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSourceID = null;
            string connectionS = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            OracleConnection cont = new OracleConnection(connectionS);
            cont.Open();
            OracleCommand theCommand = new OracleCommand("SELECT g.rest_id, g.rest_name, e.dish_dish_id, d.dish_code,  d.dish_rate, d.local_name, h.delivery_point, d.dish_name FROM rest_order_dish e, dish d, "+'"'+"Order"+'"'+" f, restaurant g, delivery_address h WHERE d.dish_id = e.dish_dish_id AND f.ord_num = e.order_ord_num AND g.rest_id = e.restaurant_rest_id AND h.delivery_id = f.delivery_address_delivery_id", cont);
            OracleDataAdapter orc = new OracleDataAdapter(theCommand);
            DataTable dtab = new DataTable();
            orc.Fill(dtab);
            cont.Close();
            GridView1.DataSource = dtab;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.DataSourceID = null;
            string UserSelectedItem = DropDownList1.Text;
            string connectionS = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            OracleConnection connectionSS = new OracleConnection(connectionS);
            OracleCommand dish_nm = new OracleCommand("SELECT g.rest_id, g.rest_name, e.dish_dish_id, d.dish_code, d.dish_rate, d.local_name, h.delivery_point, d.dish_name FROM rest_order_dish e, dish d, " + '"' + "Order" + '"' + " f, restaurant g, delivery_address h WHERE d.dish_id = e.dish_dish_id AND f.ord_num = e.order_ord_num AND g.rest_id = e.restaurant_rest_id AND h.delivery_id = f.delivery_address_delivery_id AND d.dish_name = " + "'" + UserSelectedItem + "'", connectionSS);
            OracleDataAdapter orc = new OracleDataAdapter(dish_nm);
            DataTable dtab = new DataTable();
            orc.Fill(dtab);
            GridView1.DataSource = dtab;
            GridView1.DataBind();
        }
    }
}