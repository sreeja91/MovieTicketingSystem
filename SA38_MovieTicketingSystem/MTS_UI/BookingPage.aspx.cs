using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SA38_MovieTicketingSystem.MTS_Controller;
namespace SA38_MovieTicketingSystem.MTS_UI
{
    public partial class BookingPage : System.Web.UI.Page
    {
       // SA38_MovieTicketingDBEntities context = new SA38_MovieTicketingDBEntities();
        BookingController controller = new BookingController();

        int scheduleId = 0;
        String memberId = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["moviecode"].Value != string.Empty || Request.Cookies["moviecode"] != null)
            {
                if (Request.Cookies["username"] != null || Request.Cookies["username"].Value != string.Empty)
                {
                    memberId = Request.Cookies["username"].Value;
                    scheduleId = Convert.ToInt32(Request.Cookies["moviecode"].Value);
                    DisplayTitle();
                    FormatReservedSeat();
                }
            }
            else
            {
                //redirect to error page.
            }
        }
        protected void ConfirmBtn_Click(object sender, EventArgs e)
        {
                String bookingId = "";
                controller.CreateNewBooking(scheduleId, memberId, ref bookingId);
                int NoOfRowsAffected =  UpdateSeatBooking(bookingId);
                if (NoOfRowsAffected != 0)
                {
                    Response.Redirect("~/MTS_UI/BookingConfirmationUI.aspx?BookingID=" + bookingId + "");
                }
                else
                {
                    System.Web.HttpContext.Current.Response.Write("<SCRIPT>alert('"+" SelectedDatesCollection atleast 1 SeatAvailability seat to proceed"+ "')</SCRIPT>");
                }
        }
        private int UpdateSeatBooking(String bookingId)
        {
            int NoOfRowsAffected = 0;
            foreach (Table t in Panel1.Controls.OfType<Table>())
            {
                foreach (TableRow row in t.Rows)
                {
                    foreach (TableCell cell in row.Cells)
                    {
                        foreach (CheckBox cb in cell.Controls.OfType<CheckBox>())
                        {
                            if (cb.Checked == true)
                            {
                                String seatId = cb.ID.Substring(1);
                                NoOfRowsAffected += controller.UpdateSeatBooking(seatId, bookingId, scheduleId);//appropriate schedule id,booking id has to pass.
                            }
                        }
                    }
                }
            }
            return NoOfRowsAffected;
        }
       private void FormatReservedSeat()
       {
           List<SeatAvailability> lSeats = controller.GetAllSeats(scheduleId);
           foreach (SeatAvailability seat in lSeats)
           {
               if (seat.BookingId != null)
               {
                   foreach (Table t in Panel1.Controls.OfType<Table>())
                   {
                       foreach (TableRow row in t.Rows)
                       {
                           foreach (TableCell cell in row.Cells)
                           {
                               foreach (CheckBox cb in cell.Controls.OfType<CheckBox>())
                               {
                                   if (seat.SeatNumber.CompareTo(cb.ID.Substring(1)) == 0)
                                   {
                                       cb.Enabled = false;
                                       cb.BackColor = System.Drawing.Color.Red;
                                       cb.BorderColor = System.Drawing.Color.Red;
                                       cb.ForeColor = System.Drawing.Color.Red;
                                   }
                               }
                           }
                       }
                   }
               }
           }         
       }
       public void DisplayTitle()
       {
           MovieSchedule movieSchedule = controller.GetScheduleDetails(scheduleId);
           lblSeatAvailability.Text = "Seat availability for   " + movieSchedule.Movie.Name + "  " + movieSchedule.ScheduleDate.ToString().Substring(0, 9) +"    At   "+ movieSchedule.Timing.StartTime.ToString().Substring(9);
       }

       protected void CB_CheckedChanged(object sender, EventArgs e)
       {
           double? price = GetMoviePrice(scheduleId);
           if (lblAmount.Text != "")
           {
               double? dAmount =0;
               String amount = lblAmount.Text;
               if (((CheckBox)sender).Checked == true)
               {
                   dAmount = Convert.ToDouble(amount) + price;
               }
               else
               {
                   dAmount = Convert.ToDouble(amount) - price;
               }
               lblAmount.Text = dAmount.ToString();
           }
           else
           {
             lblAmount.Text = price.ToString();
            }

       }
       public double? GetMoviePrice(int scheduleId)
       {
           MovieSchedule movieSchedule = controller.GetScheduleDetails(scheduleId);
           return movieSchedule.Movie.Price;
           
       }
        //use these methods to validate scheduleid and memberid in the page_load.
       private bool ValidateScheduleId()
       {
           return true;
       }
       private bool ValidateMemberId()
       {
           return true;
       }
        //Not used anymore.
       private void CreateCheckBox()
       {
           List<SeatAvailability> lSeats = controller.GetAllSeats(scheduleId);

           if (lSeats != null)
           {
               int i = 1;
               foreach (SeatAvailability seat in lSeats)
               {
                   CheckBox cb1 = new CheckBox();
                   cb1.ID = i.ToString();
                   cb1.EnableViewState = true;
                   //cb1.AutoPostBack = true;
                   cb1.CheckedChanged += new EventHandler(CB_CheckedChanged);
                   Panel1.Controls.Add(cb1);
                   Panel1.Controls.Add(new LiteralControl("<br/>"));
                   i++;
               }
           }
       }
    }

}