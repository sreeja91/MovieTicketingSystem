using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SA38_MovieTicketingSystem.MTS_Controller;

namespace SA38_MovieTicketingSystem.MTS_UI
{
    public partial class NewSchedule : System.Web.UI.Page
    {
        MovieScheduleController movieschedule_controller=new MovieScheduleController();
        BookingController bookingController = new BookingController();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            status.Text = "";
            if (!IsPostBack)
            {

                iddropdown.DataSource =movieschedule_controller.GetID() ;

                iddropdown.DataBind();

                Moviedropdown.DataSource = movieschedule_controller.MovieName();

                Moviedropdown.DataBind();

                theatredropdown.DataSource = movieschedule_controller.GetTheatreinfo();

                theatredropdown.DataBind();

                timingdropdown.DataSource = movieschedule_controller.GetTiminginfo();

                timingdropdown.DataBind();
            }



        }

       

        protected void iddropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            int scheduleid=Convert.ToInt32(iddropdown.SelectedValue);
            MovieSchedule moviescheduleobj = new MovieSchedule();
            moviescheduleobj=movieschedule_controller.RetrieveMovieSchedule(scheduleid);

            //movieidtxt.Text = moviescheduleobj.MovieId.ToString();
            //theatreidtxt.Text = moviescheduleobj.TheatreId.ToString();
            //timingidtxt.Text = moviescheduleobj.TimingId.ToString();
            //scheduledatetxt.Text = moviescheduleobj.ScheduleDate.ToString();

        }

        protected void createbtn_Click(object sender, EventArgs e)
        {
            MovieSchedule addschedule = new MovieSchedule();

            Movie m = new Movie();
            m= movieschedule_controller.GetMovieId(Moviedropdown.SelectedValue);
            addschedule.MovieId = m.Id;

            Theatre t = new Theatre();
            t= movieschedule_controller.GetTheatreId(theatredropdown.SelectedValue);
            addschedule.TheatreId = t.Id;
            
          
            Timing timing = new Timing();
            timing = movieschedule_controller.GetTimingId(timingdropdown.SelectedValue);
            addschedule.TimingId = timing.Id;

            addschedule.ScheduleDate = Convert.ToDateTime(scheddatetxt.Text);

            
            movieschedule_controller.CreateSchedule(addschedule);
            MovieSchedule scheduleId = movieschedule_controller.RetrieveLastSchedule();

            if (scheduleId != null)
            {
                bookingController.InseartSeatsForNewSchedule(scheduleId.Id);
            }
            status.Text = "New Schedule created successfully";
        }

        protected void updatebtn_Click(object sender, EventArgs e)
        {
            MovieSchedule ms = new MovieSchedule();

            ms.Id =Convert.ToInt32(iddropdown.SelectedValue);

            Movie m = new Movie();
            m = movieschedule_controller.GetMovieId(Moviedropdown.SelectedValue);
            ms.MovieId = m.Id;

            Theatre t = new Theatre();
            t = movieschedule_controller.GetTheatreId(theatredropdown.SelectedValue);
            ms.TheatreId = t.Id;


            Timing timing = new Timing();
            timing = movieschedule_controller.GetTimingId(timingdropdown.SelectedValue);
            ms.TimingId =timing.Id;

            ms.ScheduleDate =Convert.ToDateTime(scheddatetxt.Text);
            movieschedule_controller.UpdateSchedule(ms);
            status.Text = " Schedule updated successfully";

        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            MovieSchedule ms = new MovieSchedule();
            ms.Id = Convert.ToInt32(iddropdown.SelectedValue);

            movieschedule_controller.DeleteSchedule(ms);
            status.Text = "Schedule deleted";
        }

        protected void theatredropdown_SelectedIndexChanged(object sender, EventArgs e)
        {

        }





    }
}