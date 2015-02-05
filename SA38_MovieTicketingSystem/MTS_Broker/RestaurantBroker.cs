using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SA38_MovieTicketingSystem.MTS_UI;

namespace SA38_MovieTicketingSystem.MTS_Broker
{
    public class RestaurantBroker
    {
        SA38_MovieTicketingDBEntities context;

        public RestaurantBroker()
        {
            context = new SA38_MovieTicketingDBEntities();
        }
        public Restaurant searchRestaurantById(int rid)
        {
            var data = from x in context.Restaurants
                       where x.Id == rid
                       select x;
            Restaurant rest = data.FirstOrDefault();

            return rest;
        }

        public void addNewRestaurant(Restaurant r)
        {

            context.AddToRestaurants(r);
            context.SaveChanges();
        }

        public void updateRestaurantInfo(Restaurant res)
        {
            var data = context.Restaurants.FirstOrDefault(x => x.Id == res.Id);

          
                data.Name = res.Name;
                data.Location = res.Location;
                data.URL = res.URL;

                context.SaveChanges();
           
        }

        public void DeleteRestaurant(Restaurant res)
        {
            var v = from x in context.Restaurants
                        where x.Id == res.Id
                        select x;
            Restaurant data = v.FirstOrDefault();
           
            context.DeleteObject(data);
            context.SaveChanges();
        }

    }
}