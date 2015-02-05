using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SA38_MovieTicketingSystem.MTS_Broker;

namespace SA38_MovieTicketingSystem.MTS_Controller
{
    public class TheatreController
    {
        TheatreBroker theatre_broker = new TheatreBroker();

        public Theatre GetTheatreId(string location)
        {
            
            return theatre_broker.GetTheatreId(location);

        }
        public List<Theatre> GetTheatreDetails()
        {
           return theatre_broker.GetTheatreDetails();
        }
        public void AddTheatre(Theatre t)
        {
            theatre_broker.AddTheatre(t);
        }

        public void DeleteTheatre(Theatre t)
        {
            theatre_broker.DeleteTheatre(t);
        
        }
    }
}