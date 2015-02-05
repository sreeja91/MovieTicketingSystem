using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SA38_MovieTicketingSystem.MTS_Broker
{
    public class PromotionBroker
    {
        SA38_MovieTicketingDBEntities MovieTicketingEntities = new SA38_MovieTicketingDBEntities();

        public List<Movie> SelectAllMovies()
        {
            var v = from movie in MovieTicketingEntities.Movies
                    select movie;
            return v.ToList<Movie>();
        }

        public Movie SelectMovieById(int n)
        {
            var v = from movie in MovieTicketingEntities.Movies
                    where movie.Id == n
                    select movie;
            return v.First();
        }

        public List<object> moviePromotions(int movieId)
        {
            var query = from ms in MovieTicketingEntities.MovieSchedules
                        where movieId == ms.MovieId && ms.ScheduleDate >=DateTime.Now
                        select new { ms.ScheduleDate, ms.Timing.StartTime, ms.Promotions.FirstOrDefault().Description, ms.Promotions.FirstOrDefault().Restaurant.Name };

            return query.ToList<object>();

        }

        public string movieName(int mId)
        {
            var query1 = from mov in MovieTicketingEntities.Movies
                         where mId == mov.Id
                         select mov.Name;
            return query1.First();
        }        
    }
}

