using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SA38_MovieTicketingSystem.MTS_Broker;

namespace SA38_MovieTicketingSystem.MTS_Controller
{
    public class MovieScheduleController
    {
        MovieScheduleBroker movieschedule_broker = new MovieScheduleBroker();

        public List<int> GetID()
        {
            return movieschedule_broker.GetID();
        }

        public List<String> MovieName()
        {

            return movieschedule_broker.MovieName();
        }

        public List<string> GetTheatreinfo()
        {

            return movieschedule_broker.GetTheatreinfo();
        }

        public List<string> GetTiminginfo()
        {
            return movieschedule_broker.GetTiminginfo();
        }

        public MovieSchedule RetrieveMovieSchedule(int scheduleid)
        {
            return movieschedule_broker.RetrieveMovieSchedule(scheduleid);

        }

        public Movie GetMovieId(string name)
        {
            return movieschedule_broker.GetMovieId(name);
        }

        public Timing GetTimingId(string starttime)
        {
            return movieschedule_broker.GetTimingId(starttime);
        }
        public Theatre GetTheatreId(string location)
        {
            return movieschedule_broker.GetTheatreId(location);
        }
        public void CreateSchedule(MovieSchedule ms)
        {
            movieschedule_broker.CreateSchedule(ms);
            
        }

        public void UpdateSchedule(MovieSchedule ms)
        {
            movieschedule_broker.UpdateSchedule(ms);
        }

        public void DeleteSchedule(MovieSchedule ms)
        {
            movieschedule_broker.DeleteSchedule(ms);
        }
        public MovieSchedule RetrieveLastSchedule()
        {
           return movieschedule_broker.RetrieveLastSchedule();
        }
    }
}