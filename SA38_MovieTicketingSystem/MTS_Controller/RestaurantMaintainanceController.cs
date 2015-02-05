using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SA38_MovieTicketingSystem.MTS_Broker;

namespace SA38_MovieTicketingSystem.MTS_Controller
{
    public class RestaurantMaintainanceController
    {

        private RestaurantBroker restaurantBroker = new RestaurantBroker();

        public Restaurant searchRestaurantById(int rid)
        {
            return restaurantBroker.searchRestaurantById(rid);
        }

        public void addRestaurant(Restaurant r)
        {
            restaurantBroker.addNewRestaurant(r);
        }

        public void updateRestaurantById(Restaurant res)
        {
            restaurantBroker.updateRestaurantInfo(res);
        }

        public void deleteResturantById(Restaurant res)
        {
            restaurantBroker.DeleteRestaurant(res);
        }
    }
}