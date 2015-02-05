using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SA38_MovieTicketingSystem.MTS_Broker;
namespace SA38_MovieTicketingSystem.MTS_Controller
{
    public class BookingController
    {
        BookingBroker broker = new BookingBroker();


        public string GetNewBookingID()
        {
            string newBookingID = "B001";//This is default ID incase no record found.
            Booking b = broker.GetBooking();
            if (b != null)
            {
                string existingID = b.Id.ToString();
                string tempnewID = (Convert.ToInt32(existingID.Substring(1)) + 1).ToString();
                tempnewID = tempnewID.PadLeft(3, '0');
                newBookingID = "B" + tempnewID;
            }
            return newBookingID;
        }
        public List<SeatAvailability> GetAllSeats(int scheduleId)
        {
            List<SeatAvailability> lSeats = broker.GetAllSeats(scheduleId);
            return lSeats;
        }
        public int UpdateSeatBooking(String seatId,String bookingId,int sceduleId)
        {
            int NoOfRowsAffected = broker.UpdateSeatBooking(seatId, bookingId, sceduleId);
            return NoOfRowsAffected;
        }
        public int CreateNewBooking(int scheduleId,String memberId,ref String bookingId)
        {
            bookingId = GetNewBookingID();
            Booking booking = new Booking();
            booking.Id = bookingId;
            booking.MemberId = memberId;
            booking.Status = "BOOKED";
            booking.ScheduleId = scheduleId;
            return broker.InsertNewBooking(booking);
        }
        public MovieSchedule GetScheduleDetails(int scheduleId)
        {
           return broker.GetScheduleDetails(scheduleId);
        }

        public Booking GetBookingByBookingId(String bookingId)
        {
           return broker.GetBookingByBookingId(bookingId);
        }
        public int InseartSeatsForNewSchedule(int scheduleId)
        {
           return broker.InseartSeatsForNewSchedule(scheduleId);
        }
    }
}