using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SA38_MovieTicketingSystem.MTS_Controller;

namespace SA38_MovieTicketingSystem.MTS_UI
{
    public partial class IssueTickets : System.Web.UI.Page
    {
        private IssueTicketController issueTicketController = new IssueTicketController();
        
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void go_Button_Click(object sender, EventArgs e)
        {
            List<object> data = issueTicketController.SearchBookingById(IDTextBox.Text);

            if (data.Count == 0)
            {
                TextBox1.Text = "Invalid Booking ID!!Please Provide Correct ID";
                
            }
            else
            {
                TextBox1.Text = "";
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
        }

        protected void ProceedButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("IssueTicketsReport.aspx?BookingID="+IDTextBox.Text);
        }
    }
  
}