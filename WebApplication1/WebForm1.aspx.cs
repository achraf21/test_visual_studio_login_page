using System;
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            TextBox3.Text = "PASSWORD";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            msg.Text = "aaa";
            try
            {
                 msg.Text = "bbb";
                 string connectionstring = " datasource=localhost;port=3306;username=root;password=";
                //Requete vulnérable (SQLi)
                //string mysql = "select * from login.user where username='"+ TextBox1.Text + "' and password='"+ TextBox2.Text+"' ;";

                //Requete Non Vulnérable (SQLi)
                string mysql = "select * from login.user where username=@username and password=@password ;";

                MySqlConnection conn = new MySqlConnection(connectionstring);
                MySqlCommand commande = new MySqlCommand(mysql,conn);

                //Parametres utilisés non Vulnerable (SQLi)
                commande.Parameters.AddWithValue("@username", TextBox1.Text);
                commande.Parameters.AddWithValue("@password", TextBox2.Text);

                conn.Open();

                 MySqlDataAdapter dataAdapter = new MySqlDataAdapter();
                 dataAdapter.SelectCommand = commande;
                DataTable dataTable = new DataTable();
                dataAdapter.Fill(dataTable);

                if (dataTable.Rows.Count>0)
                {
                    Response.Redirect("WebForm2.aspx");
                }
                else
                {
                    msg.Text = "username ou password incorrecte";
                }
                //msg.Text = ""+dataTable.Rows;
                /*foreach (DataRow row in dataTable.Rows)
                {
                    msg.Text = "" + row["username"];
                }*/

            }
            catch (Exception ex)
            {
                msg.Text = ex.ToString();
            }
           
        }

    }
}