using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SA38_MovieTicketingSystem.MTS_Controller;

namespace SA38_MovieTicketingSystem.MTS_UI
{
    public partial class Promotions : System.Web.UI.Page
    {
        private PromotionController promotionController = new PromotionController();

        protected void Page_Load(object sender, EventArgs e)
        {
            MovieTableList(promotionController.SelectAllMovies());

        }

        private Table MovieTable(Movie m)
        {
            TableCell tableCell;
            TableRow tableRow;
            Image tempimage;
            Table temptable;

            tableCell = new TableCell();
            tableCell.RowSpan = 5;
            tempimage = new Image();
            tempimage.ImageUrl = m.ContentURL;
            tableCell.Controls.Add(tempimage);
            tableRow = new TableRow();
            tableRow.Cells.Add(tableCell);

            tableCell = new TableCell();
            tableCell.Text = "Movie Name: " + m.Name
                + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"/MTS_UI/Promotions2.aspx?movieId=" + m.Id + "\">[Click Here To Know About Promotions]</a>";
            tableCell.Height = 40;
            tableRow.Cells.Add(tableCell);
            temptable = new Table();
            temptable.Rows.Add(tableRow);

           

            return temptable;
        }

        private void MovieTableList(List<Movie> movieList)
        {
            TableCell tableCell;
            TableRow tableRow;

            foreach (Movie m in movieList)
            {
                tableCell = new TableCell();
                tableCell.Controls.Add(MovieTable(m));
                tableRow = new TableRow();
                tableRow.Cells.Add(tableCell);
                TableMovie.Rows.Add(tableRow);
            }
        }

    }
}



//tableCell.Text = "Movie Name: " + m.Name
//                + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"http://www.google.com\">[Click Here To Know About Promotions]</a>";
//            tableCell.Height = 40;  

//http://localhost:49196/MTS_UI/Promotions.aspx