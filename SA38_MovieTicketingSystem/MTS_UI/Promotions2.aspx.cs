using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SA38_MovieTicketingSystem.MTS_Controller;

namespace SA38_MovieTicketingSystem.MTS_UI
{
    public partial class Promotions2 : System.Web.UI.Page
    {
        private PromotionController promotionController = new PromotionController();

        protected void Page_Load(object sender, EventArgs e)
        {
            int movieId = Convert.ToInt32(Request.QueryString["movieId"]);
            GridView1.DataSource = promotionController.moviePromotions(movieId);
            GridView1.DataBind();


            MovieNameLabel.Text = "Promotions for " + promotionController.movieName(movieId);

        }
    }
}