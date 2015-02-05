using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SA38_MovieTicketingSystem.MTS_Controller;
namespace SA38_MovieTicketingSystem.MTS_UI
{
    public partial class BookingConfirmationUI : System.Web.UI.Page
    {
        BookingController controller = new BookingController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["BookingID"].ToString() != string.Empty || Request.QueryString["BookingID"] != null)
            {
                String bookingId = Request.QueryString["BookingID"].ToString();
                Booking booking = controller.GetBookingByBookingId(bookingId);
                    lblBookingConfirmationHeader.Text = " Your Booking has been successfull";
                    lblBookingIdValue.Text = bookingId;
                    lblMemberIdValue.Text = booking.Member.Id;
                    lblMbrNmVal.Text = booking.Member.Name;
                    lblMovieNmVal.Text = booking.MovieSchedule.Movie.Name;
                    lblDateValue.Text = booking.MovieSchedule.ScheduleDate.ToString().Substring(0, 9);
                    foreach(SeatAvailability sa in booking.SeatAvailabilities)
                    {
                        lblSeatNumVal.Text +=", "+ sa.SeatNumber;
                    }
                    lblAmountVal.Text = (booking.SeatAvailabilities.Count * booking.MovieSchedule.Movie.Price).ToString();

            }
            else
            {
                lblBookingConfirmationHeader.Text = " Your Booking is not successfull.";
            }

        }
    }
}