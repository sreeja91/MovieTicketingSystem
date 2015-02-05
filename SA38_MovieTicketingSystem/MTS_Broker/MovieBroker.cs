using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SA38_MovieTicketingSystem.MTS_Broker
{
    public class MovieBroker
    {
       // private SA38_MovieTicketingDBEntities MovieTicketingEntities = new SA38_MovieTicketingDBEntities();
        SA38_MovieTicketingDBEntities db;

        public MovieBroker()
        {
            db = new SA38_MovieTicketingDBEntities();
        }

        public Movie RetrieveMovie(int movie_id)
        {
            var q = from x in db.Movies
                    where x.Id == movie_id
                    select x;


            Movie m = q.FirstOrDefault();

            return m;

        }

        public void AddMovie(Movie m)
        {

            db.AddToMovies(m);
            db.SaveChanges();
        }

        public void UpdateMovie(Movie m)
        {
            var q = db.Movies.FirstOrDefault(x => x.Id == m.Id);
            if (q != null)
            {
                q.Id = m.Id;
                q.Name = m.Name;
                q.Description = m.Description;
                q.Rating = m.Rating;
                q.ContentURL = m.ContentURL;
                q.Duration = m.Duration;
                q.Price = m.Price;
            }
            db.SaveChanges();

        }
        public void DeleteMovie(Movie m)
        {

            var query = from x in db.Movies
                        where x.Id == m.Id
                        select x;

            if (query != null)
            {
                foreach (Movie movie in query)

                    db.DeleteObject(movie);
                db.SaveChanges();
            }

        }
        public List<Movie> SelectAllMovies()
        {
            var v = from movie in db.Movies
                    select movie;
            return v.ToList<Movie>();
        }

        public Movie SelectMovieById(int n)
        {
            var v = from movie in db.Movies
                    where movie.Id == n
                    select movie;
            return v.FirstOrDefault();
        }
    }
}