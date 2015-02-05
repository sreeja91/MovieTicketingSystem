using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SA38_MovieTicketingSystem.MTS_Controller;

namespace SA38_MovieTicketingSystem.MTS_UI
{
    public partial class MoviesUI : System.Web.UI.Page
    {
        private MovieController movieController = new MovieController();

        protected void Page_Load(object sender, EventArgs e)
        {
            //GridView1.DataSource = movieController.SelectAllMovies();
            //GridView1.DataBind();

            //Movie tempmovie; 
            //tempmovie = movieController.SelectMovieById(1);

            //TableCell tableCell;
            //TableRow tableRow;
            //Table temptable;

            //temptable = MovieTable(movieController.SelectMovieById(1));

            //tableCell = new TableCell();
            //tableCell.Controls.Add(temptable);
            //tableRow = new TableRow();
            //tableRow.Cells.Add(tableCell);
            //TableMovie.Rows.Add(tableRow);

            //temptable = MovieTable(movieController.SelectMovieById(2));

            //tableCell = new TableCell();
            //tableCell.Controls.Add(temptable);
            //tableRow = new TableRow();
            //tableRow.Cells.Add(tableCell);
            //TableMovie.Rows.Add(tableRow);

            //tempmovie = movieController.SelectMovieById(8);
            //tableCell = new TableCell();
            //tableCell.Controls.Add(MovieTable(tempmovie));
            //tableRow = new TableRow();
            //tableRow.Cells.Add(tableCell);
            //TableMovie.Rows.Add(tableRow);

            //MovieTableList(movieController.SelectAllMovies());
            MovieTableList(movieController.SelectCurrentMovies());
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
                + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"/MTS_UI/MScheduleUI.aspx?movie=" + m.Name + "\">[Schedule]</a>";
            tableCell.Height = 40;
            tableRow.Cells.Add(tableCell);
            temptable = new Table();
            temptable.Rows.Add(tableRow);

            tableCell = new TableCell();
            tableCell.Text = "Rating: " + m.Rating;
            tableCell.Height = 15;
            tableRow = new TableRow();
            tableRow.Cells.Add(tableCell);
            temptable.Rows.Add(tableRow);

            tableCell = new TableCell();
            tableCell.Text = "Duration: " + m.Duration.ToString();
            tableCell.Height = 15;
            tableRow = new TableRow();
            tableRow.Cells.Add(tableCell);
            temptable.Rows.Add(tableRow);

            tableCell = new TableCell();
            tableCell.Text = "Price: $" + m.Price.ToString();
            tableCell.Height = 15;
            tableRow = new TableRow();
            tableRow.Cells.Add(tableCell);
            temptable.Rows.Add(tableRow);

            tableCell = new TableCell();
            tableCell.Text = "Description: " + m.Description;
            tableCell.VerticalAlign = VerticalAlign.Top;
            tableRow = new TableRow();
            tableRow.Cells.Add(tableCell);
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