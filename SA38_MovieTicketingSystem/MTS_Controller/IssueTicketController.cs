using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SA38_MovieTicketingSystem.MTS_Broker;

namespace SA38_MovieTicketingSystem.MTS_Controller
{
    public class IssueTicketController
    {
        private BookingBroker bookingBroker = new BookingBroker();

        public List<object> SearchBookingById(String bookingId)
        {
            return bookingBroker.SearchBookingById(bookingId);
        }

        public Booking GetBookingByBookingId(String bookingId)
        {
            return bookingBroker.GetBookingByBookingId(bookingId);
        }
    }
}