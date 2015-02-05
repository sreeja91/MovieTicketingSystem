using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SA38_MovieTicketingSystem.MTS_Broker
{
    public class MScheduleBroker
    {
        private SA38_MovieTicketingDBEntities MovieTicketingEntities = new SA38_MovieTicketingDBEntities();

        public List<Movie> SelectAllMovies()
        {
            var v = from schedule in MovieTicketingEntities.MovieSchedules
                    select schedule.Movie;
            return v.Distinct<Movie>().ToList<Movie>();
        }

        public List<object> SelectMovieSchedule(String movieName)
        {
            var v = from schedule in MovieTicketingEntities.MovieSchedules
                    where schedule.Movie.Name == movieName
                    select new { schedule.Id, MovieName = schedule.Movie.Name, Theatre = schedule.Theatre.Description, schedule.ScheduleDate, schedule.Timing.StartTime };
            return v.ToList<object>();
        }
    }
}