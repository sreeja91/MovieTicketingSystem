using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SA38_MovieTicketingSystem.MTS_Broker;

namespace SA38_MovieTicketingSystem.MTS_Controller
{
    public class MovieController
    {
       // private MovieBroker movieBroker = new MovieBroker();
        private MScheduleBroker scheduleBroker = new MScheduleBroker();
        MovieBroker movie_broker;

        public MovieController()
        {
            movie_broker = new MovieBroker();

        }

        public Movie RetrieveMovie(int movie_id)
        {
            return movie_broker.RetrieveMovie(movie_id);

        }

        public void AddMovie(Movie m)
        {
            movie_broker.AddMovie(m);
        }

        public void UpdateMovie(Movie m)
        {
            movie_broker.UpdateMovie(m);

        }

        public void DeleteMovie(Movie m)
        {
            movie_broker.DeleteMovie(m);
        }

        public List<Movie> SelectAllMovies()
        {
            return movie_broker.SelectAllMovies();
        }

        public Movie SelectMovieById(int n)
        {
            return movie_broker.SelectMovieById(n);
        }

        public List<Movie> SelectCurrentMovies()
        {
            return scheduleBroker.SelectAllMovies();
        }

        public List<object> SelectMovieSchedule(String movieName)
        {
            return scheduleBroker.SelectMovieSchedule(movieName);
        }
    }
}