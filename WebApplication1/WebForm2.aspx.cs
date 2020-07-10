using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Entity;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public DataTable dataTable = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //msg2.Text = "bbb";
                string connectionstring = " datasource=localhost;port=3306;username=root;password=";
                string mysql = "select * from login.user;";
                MySqlConnection conn = new MySqlConnection(connectionstring);
                MySqlCommand commande = new MySqlCommand(mysql, conn);
                conn.Open();
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter();
                dataAdapter.SelectCommand = commande;
                //DataTable dataTable = new DataTable();
                dataAdapter.Fill(dataTable);
                
                //afficher les resultats dans un tableau (Non Vulnérable pour XSS)
                //GridView1.DataSource = dataTable;
                //GridView1.DataBind();


                //afficher les usernames dans une (Vulnérable pour XSS)
                /* foreach (DataRow row in dataTable.Rows)
                 {
                     string msg = " | "+row["username"];
                     msg2.Text = msg2.Text+ msg;
                 }*/

            }
            catch (Exception ex)
            {
                msg2.Text = ex.ToString();
            }

        }

        protected void LogOut(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        
    }
}