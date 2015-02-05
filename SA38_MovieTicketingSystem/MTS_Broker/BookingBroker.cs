using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SA38_MovieTicketingSystem.MTS_Broker
{
    public class BookingBroker
    {
        SA38_MovieTicketingDBEntities context = new SA38_MovieTicketingDBEntities();

        
        public Booking GetBooking()
        {
            var booking = from id in context.Bookings
                          select id;
            if (booking.Any())
            {
                Booking b = booking.ToList().LastOrDefault();
                return b;
            }
            else
            {
                return null;
            }
        }
        public Booking GetBookingByBookingId(String bookingId)
        {
            var booking = from bk in context.Bookings
                          where bk.Id == bookingId
                          select bk;
            if (booking.Any())
            {
                Booking b = booking.ToList().FirstOrDefault();
                return b;
            }
            else
            {
                return null;
            }
        }
        public List<SeatAvailability> GetAllSeats(int scheduleId)
        {
            var v = context.SeatAvailabilities.Where(t => t.ScheduleId == scheduleId);
            if (v !=null)
            {
                List<SeatAvailability> bList = v.ToList();
                return bList;
            }
            else
            {
                return null;
            }

        }
        
        public int UpdateSeatBooking(String seatId,String bookingId,int sceduleId)
        {
            SeatAvailability v = context.SeatAvailabilities.Where(t => t.SeatNumber.CompareTo(seatId) == 0).Where(t => t.ScheduleId == sceduleId).FirstOrDefault();
            v.BookingId = bookingId;
            int NoOfRowsAffected = context.SaveChanges();
            return NoOfRowsAffected;
        }
        public int InsertNewBooking(Booking booking)
        {
            context.AddObject("Bookings", booking);
            int NoOfRowsAffected = context.SaveChanges();
            return NoOfRowsAffected;
        }
        public MovieSchedule GetScheduleDetails(int scheduleId)
        {
          MovieSchedule schedule =  context.MovieSchedules.FirstOrDefault(t => t.Id == scheduleId);
          return schedule;
        }
        public List<object> SearchBookingById(String bookingId)
        {
            var data = (from x in context.Bookings
                        where x.Id == bookingId
                        select new
                        {
                            x.Id,
                            x.Member.Name,
                            x.Member.PhoneNumber,
                            x.MovieSchedule.TheatreId,
                            x.MovieSchedule.ScheduleDate,
                            MovieName = x.MovieSchedule.Movie.Name,
                            x.MovieSchedule.Timing.StartTime,
                            x.MovieSchedule.Timing.EndTime
                        });
            if (data == null)
            {
                return null;
            }

            else
                return data.ToList<object>();
        }
        public int InseartSeatsForNewSchedule(int scheduleId)
        {
            int NoOfRowsAffected = 0;
            for(int i =0 ;i<24;i++)
            {
                SeatAvailability seatAvail = new SeatAvailability();
                seatAvail.ScheduleId = scheduleId;
                seatAvail.SeatNumber = (i + 1).ToString();
                context.SeatAvailabilities.AddObject(seatAvail);
                NoOfRowsAffected += context.SaveChanges();
            }
            return NoOfRowsAffected;
        }

    }
}
