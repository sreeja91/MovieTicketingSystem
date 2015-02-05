using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SA38_MovieTicketingSystem.MTS_Broker
{
    public class MovieScheduleBroker
    {
        SA38_MovieTicketingDBEntities db= new SA38_MovieTicketingDBEntities();

        public List<int> GetID()
        {
            db = new SA38_MovieTicketingDBEntities();
            List<int> strList = new List<int>();
            var query = from x in db.MovieSchedules
                        select x;

            foreach (var q in query)
            {
                strList.Add(q.Id);
            }

            return strList;
        }

        public List<string> MovieName()
        {
            List<string> namelist = new List<string>();
            var query = from x in db.Movies
                        select x;

            foreach (var q in query)
            {
                namelist.Add(q.Name);
            }


            return namelist;

        }


        public List<string> GetTheatreinfo()
        {
            List<string> list = new List<string>();
            var query = from x in db.Theatres
                        select x;

            foreach (var q in query)
            {
                list.Add(q.Location);
            }


            return list;

        }



        public List<string> GetTiminginfo()
        {
            List<string> timelist = new List<string>();
            var query = from x in db.Timings
                        select x;

            foreach (var q in query)
            {
                String temp = q.StartTime.Value.ToString("HH:mm:ss");
                timelist.Add(temp);
            }


            return timelist;

        }
        public Timing GetTimingId(string starttime)
        {
            var q = from x in db.Timings
                    //where x.StartTime.ToString().Substring(10) == starttime
                    select x;
            foreach (var q1 in q)
            {
               String s = q1.StartTime.Value.ToString("HH:mm:ss");
               if (s.Equals(starttime))
               {
                   return q1;
               }
            }
            return null;
            
            
        }
        public Theatre GetTheatreId(string location)
        {
            var q = from x in db.Theatres
                    where x.Location==location
                    select x;

            Theatre t = q.FirstOrDefault();
            return t;
        
        }
        public Movie GetMovieId(string name)
        {

            var q = from x in db.Movies
                    where x.Name == name
                    select x;

            Movie m = q.First();

            return m;
        
        }


        public MovieSchedule RetrieveMovieSchedule(int scheduleid)
        {
            var q = from x in db.MovieSchedules
                    where x.Id==scheduleid
                    select x;

             MovieSchedule m= q.First();

            return m;
        
        }
        public void CreateSchedule(MovieSchedule ms)
        {
            db.AddToMovieSchedules(ms);
            db.SaveChanges();
            
        }

        public void UpdateSchedule(MovieSchedule ms)
        {

            var q = db.MovieSchedules.FirstOrDefault(x => x.Id == ms.Id);

            q.Id = ms.Id;
            q.MovieId = ms.MovieId;
            q.TheatreId = ms.TheatreId;
            q.TimingId = ms.TimingId;
            q.ScheduleDate = ms.ScheduleDate;

            db.SaveChanges();
        }

        public void DeleteSchedule(MovieSchedule ms)
        {
            var query = from x in db.MovieSchedules
                        where x.Id == ms.Id
                        select x;


            foreach (MovieSchedule movschd in query)

            db.DeleteObject(movschd);
            db.SaveChanges();
                
            

        }
        public MovieSchedule RetrieveLastSchedule()
        {
            var q = from x in db.MovieSchedules     
                    select x;

            MovieSchedule m = q.ToList().LastOrDefault();

            return m;

        }
    }
}