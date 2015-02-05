using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SA38_MovieTicketingSystem;

namespace SA38_MovieTicketingSystem.MTS_Broker
{
   
    public class TheatreBroker
    {
        SA38_MovieTicketingDBEntities db=new SA38_MovieTicketingDBEntities();

        public Theatre GetTheatreId(string location)
        {
            var q = from x in db.Theatres
                    where x.Location == location
                    select x;

            Theatre t = q.FirstOrDefault();
            return t;

        }
        public List<Theatre> GetTheatreDetails()
        {
            var q = from x in db.Theatres
                    select x;
           
            
                List<Theatre> theatrelist = q.ToList<Theatre>();

                return theatrelist;
        
        }
        public void AddTheatre(Theatre t)
        {
            
            db.AddToTheatres(t);
            db.SaveChanges();

        }
        public void DeleteTheatre(Theatre t)
        {
            db.DeleteObject(t);
            db.SaveChanges();
        }

       
        }
        }
  