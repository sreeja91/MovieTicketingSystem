using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SA38_MovieTicketingSystem.MTS_Controller;
using SA38_MovieTicketingSystem.MTS_Broker;
using SA38_MovieTicketingSystem.MTS_UI;

namespace SA38_MovieTicketingSystem.MTS_UI
{
    public partial class Movies : System.Web.UI.Page
    {
       
        MovieController movie_controller = new MovieController();
       

        protected void Page_Load(object sender, EventArgs e)
        {
            movie_controller = new MovieController();
            statuslbl.Text = "";
           
        }

        protected void retrievebtn_Click(object sender, EventArgs e)
        {
            int movieid = Convert.ToInt32(idtxt.Text);

            Movie movieobj=movie_controller.RetrieveMovie(movieid);

            if (movieobj != null)
            {
               statuslbl.Text ="";
                    
                nametxt.Text = movieobj.Name;
                descptxt.Text = movieobj.Description;
                ratingtxt.Text = movieobj.Rating;
                urltxt.Text = movieobj.ContentURL;
                durationtxt.Text = movieobj.Duration.ToString();
                pricetxt.Text = movieobj.Price.ToString();
                idtxt.Enabled = false;
            }
            else
            {
               statuslbl.Text = "Invalid ID.Please enter valid ID";       
                
            }
          
           
        }

        protected void createbtn_Click(object sender, EventArgs e)
        {
            
            
            idtxt.Enabled = false;
            Movie addmovie = new Movie();

           
            addmovie.Name = nametxt.Text;
            addmovie.Description = descptxt.Text;
            addmovie.Rating=ratingtxt.Text;
            addmovie.ContentURL=urltxt.Text;
            addmovie.Duration =Convert.ToInt32(durationtxt.Text);
            addmovie.Price=Convert.ToDouble(pricetxt.Text);

            movie_controller.AddMovie(addmovie);

           statuslbl.Text = "New record created successfully";
            idtxt.Enabled = true;
        }

        protected void updatebtn_Click(object sender, EventArgs e)
        {
           

           Movie m=new Movie();
            m.Id = Convert.ToInt32(idtxt.Text);
            m.Name=nametxt.Text;
            m.Description=descptxt.Text;
            m.Rating=ratingtxt.Text;
            m.ContentURL=urltxt.Text;
            m.Duration=Convert.ToInt32(durationtxt.Text);
            m.Price=Convert.ToDouble(pricetxt.Text);
          
            movie_controller.UpdateMovie(m);

            idtxt.Enabled = true;

            statuslbl.Text = "Update successfull";
        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            Movie m = new Movie();
            m.Id = Convert.ToInt32(idtxt.Text);
            movie_controller.DeleteMovie(m);
            idtxt.Enabled = true;
            string msg = "Are you sure you want to delete?";
            System.Web.HttpContext.Current.Response.Write("<SCRIPT>alert('"+msg+"')</SCRIPT>");
            statuslbl.Text = "Record Deleted";
        }
    }
}