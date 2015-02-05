using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SA38_MovieTicketingSystem.MTS_Controller;
using SA38_MovieTicketingSystem.MTS_Broker;

namespace SA38_MovieTicketingSystem.MTS_UI
{
    public partial class TheatreDetails : System.Web.UI.Page
    {
        TheatreController theatre_controller = new TheatreController();
        protected void Page_Load(object sender, EventArgs e)
        {
            Theatredgv.DataSource = theatre_controller.GetTheatreDetails();
            Theatredgv.DataBind();
            Theatredgv.Visible = true;
            status.Text = "";
        }

        protected void createbtn_Click(object sender, EventArgs e)
        {

            Theatre addtheatre = new Theatre();

            addtheatre.Location = locationtxt.Text;
            addtheatre.Description = descptxt.Text;

            theatre_controller.AddTheatre(addtheatre);
            Theatredgv.DataSource = theatre_controller.GetTheatreDetails();
            Theatredgv.DataBind();
            status.Text = "Record Created successfully";

        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            Theatre t = new Theatre();

            t = theatre_controller.GetTheatreId(locationtxt.Text);
            
            theatre_controller.DeleteTheatre(t);
            locationtxt.Text=string.Empty;
            locationtxt.Enabled = true;
            descptxt.Text = string.Empty;
            descptxt.Enabled = true;
            Theatredgv.DataSource = theatre_controller.GetTheatreDetails();
            Theatredgv.DataBind();
            status.Text = "Record Deleted successfully";
        }

        protected void Theatredgv_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            int row = Convert.ToInt32(e.CommandArgument.ToString());
            locationtxt.Text = Theatredgv.Rows[row].Cells[2].Text;
            locationtxt.Enabled = false;
            descptxt.Text = Theatredgv.Rows[row].Cells[3].Text;
            descptxt.Enabled = false;
        }

        protected void Theatredgv_SelectedIndexChanged(object sender, EventArgs e)
        {
            //locationtxt.Text = Theatredgv.SelectedRow.Cells[1].Text;
            //descptxt.Text = Theatredgv.SelectedRow.Cells[2].Text;
        }

       

        
    }
}