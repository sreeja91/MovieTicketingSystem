using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SA38_MovieTicketingSystem.MTS_Controller;


namespace SA38_MovieTicketingSystem.MTS_UI
{
    public partial class RestaurantMaintenance : System.Web.UI.Page
    {
        private RestaurantMaintainanceController rMaintainanceController = new RestaurantMaintainanceController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RetrieveButton_Click(object sender, EventArgs e)
        {
            
            Restaurant data = rMaintainanceController.searchRestaurantById(Convert.ToInt32(ridTextBox.Text));

            if (data == null)
            {
                TextBox1.Text = "Restsurant ID Not Available";
            }
            else 
            {
                TextBox1.Text = "";
                rnameTextBox.Text = data.Name;
                locationTextBox.Text = data.Location;
                urlTextBox.Text = data.URL;
            }
        }

        protected void CreateButton_Click(object sender, EventArgs e)
        {
            Restaurant addrest = new Restaurant();
            addrest.Name = rnameTextBox.Text;
            addrest.Location = locationTextBox.Text;
            addrest.URL = urlTextBox.Text;
            
            rMaintainanceController.addRestaurant(addrest);

            TextBox1.Text = "New Restaurant added Suceessfully!!";


            
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {

            Restaurant rest = new Restaurant();

            rest.Id = Convert.ToInt32(ridTextBox.Text);
            rest.Name = rnameTextBox.Text;
            rest.Location = locationTextBox.Text;
            rest.URL = urlTextBox.Text;

            rMaintainanceController.updateRestaurantById(rest);

            TextBox1.Text = "Restaurant data UPDATED Successfully!!";
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {

            Restaurant r = new Restaurant();
            r.Id = Convert.ToInt32(ridTextBox.Text);
            rMaintainanceController.deleteResturantById(r);

            TextBox1.Text = "Deleted Sucessfully!!";

            ridTextBox.Text = "";
            rnameTextBox.Text = "";
            locationTextBox.Text = "";
            urlTextBox.Text = "";

        }


      

       
    }
}