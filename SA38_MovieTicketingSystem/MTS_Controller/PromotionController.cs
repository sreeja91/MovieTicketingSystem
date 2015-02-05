using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SA38_MovieTicketingSystem.MTS_Broker;

namespace SA38_MovieTicketingSystem.MTS_Controller
{
    public class PromotionController
    {
        private PromotionBroker promotionBroker = new PromotionBroker();

        public List<Movie> SelectAllMovies()
        {
            return promotionBroker.SelectAllMovies();
        }

        public Movie SelectMovieById(int n)
        {
            return promotionBroker.SelectMovieById(n);
        }

        public List<object> moviePromotions(int promo)
        {
            return promotionBroker.moviePromotions(promo);
        }

        public string movieName(int mId)
        {
            return promotionBroker.movieName(mId);
        }

    }
}