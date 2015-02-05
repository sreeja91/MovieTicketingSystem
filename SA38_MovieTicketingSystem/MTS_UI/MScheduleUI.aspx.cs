using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SA38_MovieTicketingSystem.MTS_Controller;

namespace SA38_MovieTicketingSystem.MTS_UI
{
    public partial class MScheduleUI : System.Web.UI.Page
    {
        private MovieController movieController = new MovieController();

        protected void Page_Load(object sender, EventArgs e)
        {
            String movieName = Request.QueryString["movie"];
            MScheduleGridView.DataSource = movieController.SelectMovieSchedule(movieName);
            MScheduleGridView.DataBind();
        }

        protected void MScheduleGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int command = Convert.ToInt32(e.CommandArgument);
            String code = MScheduleGridView.Rows[command].Cells[0].Text;
            if (Request.Cookies["username"] != null)
            {
                HttpCookie moviecode = new HttpCookie("moviecode");
                moviecode.Value = code;
                Response.Cookies.Add(moviecode);

                Response.Redirect("/MTS_UI/BookingPage.aspx?moviecode=" + code);
                //redirect to bookingpage
            }
            else
            {
                HttpCookie moviecode = new HttpCookie("moviecode");
                moviecode.Value = code;
                Response.Cookies.Add(moviecode);

                Response.Redirect("/MTS_UI/MemberUI.aspx");
            }
        }
    }
}