using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SA38_MovieTicketingSystem.MTS_Controller;

namespace SA38_MovieTicketingSystem.MTS_UI
{
    public partial class IssueTicketsReport : System.Web.UI.Page
    {
        private IssueTicketController issueTicketController = new IssueTicketController();
        protected void Page_Load(object sender, EventArgs e)
        {

            String str = Request.QueryString["BookingId"].ToString();
            Booking data = issueTicketController.GetBookingByBookingId(str);
            

            if (Request.QueryString["BookingId"].ToString() != string.Empty)
            {
                Label1.Text = data.MovieSchedule.Movie.Name;
                Label3.Text = data.MovieSchedule.Timing.StartTime.ToString().Substring(10);
                Label5.Text = data.MovieSchedule.Timing.EndTime.ToString().Substring(10);
                Label6.Text = data.MovieSchedule.TheatreId.ToString();
                Label2.Text = data.MovieSchedule.ScheduleDate.ToString().Substring(0,10);
                Label9.Text = (data.SeatAvailabilities.Count * data.MovieSchedule.Movie.Price).ToString();
                foreach (SeatAvailability sa in data.SeatAvailabilities)
                {
                    Label7.Text += ", " + sa.SeatNumber;
                }


            }

        }
    }
}