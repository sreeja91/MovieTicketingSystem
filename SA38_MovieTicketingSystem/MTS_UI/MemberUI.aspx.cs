using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SA38_MovieTicketingSystem.MTS_Controller;

namespace SA38_MovieTicketingSystem.MTS_UI
{
    public partial class MemberUI : System.Web.UI.Page
    {
        private MemberController memberController = new MemberController();

        protected void Page_Load(object sender, EventArgs e)
        {
            MultiViewMember.ActiveViewIndex = 0;
            
            if (Request.Cookies["username"] != null)
            {
                MultiViewMember.ActiveViewIndex = 1;
                LabelUpdateStatus.Text = "";
                String tempname = Request.Cookies["username"].Value;
                Member logon = memberController.LogonMember(tempname);
                if (logon != null & IsPostBack == false)
                {
                    TextBoxName.Text = logon.Name;
                    //TextBoxDOB.Text = logon.DOB.Value.ToString("dd/MM/yyyy");
                    TextBoxAddress.Text = logon.Address;
                    TextBoxPhone.Text = logon.PhoneNumber;
                    TextBoxEmail.Text = logon.Email;
                    TextBoxChangePassword.Text = logon.NRIC;
                    //TextBoxChangeRePassword.Text = logon.NRIC;
                }
            }
            
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            Member logon = memberController.CreateMemberById(TextBoxUsername.Text, TextBoxPassword.Text);
            if (logon != null)
            {
                MultiViewMember.ActiveViewIndex = 1;
                TextBoxName.Text = logon.Name;
                //TextBoxDOB.Text = logon.DOB.Value.ToString("dd/MM/yyyy");
                TextBoxAddress.Text = logon.Address;
                TextBoxPhone.Text = logon.PhoneNumber;
                TextBoxEmail.Text = logon.Email;
                TextBoxChangePassword.Text = logon.NRIC;
                //TextBoxChangeRePassword.Text = logon.NRIC;

                HttpCookie username = new HttpCookie("username");
                username.Value = TextBoxUsername.Text;
                username.Expires = DateTime.Now.AddMinutes(15);
                Response.Cookies.Add(username);
            }
        }

        protected void ButtonLogon_Click(object sender, EventArgs e)
        {
            Member logon = memberController.LogonMemberById(TextBoxUsername.Text, TextBoxPassword.Text);
            if (logon != null)
            {
                MultiViewMember.ActiveViewIndex = 1;
                TextBoxName.Text = logon.Name;
                //TextBoxDOB.Text = logon.DOB.Value.ToString("dd/MM/yyyy");
                TextBoxAddress.Text = logon.Address;
                TextBoxPhone.Text = logon.PhoneNumber;
                TextBoxEmail.Text = logon.Email;
                TextBoxChangePassword.Text = logon.NRIC;
                //TextBoxChangeRePassword.Text = logon.NRIC;

                HttpCookie username = new HttpCookie("username");
                username.Value = TextBoxUsername.Text;
                username.Expires = DateTime.Now.AddMinutes(15);
                Response.Cookies.Add(username);
            }
        }


        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            Member update = new Member();
            String tempname = Request.Cookies["username"].Value;
            update.Id = tempname;
            update.Name = TextBoxName.Text;
            //update.DOB = DateTime.ParseExact(TextBoxDOB.Text, "dd/MM/yyyy", null);
            update.Address = TextBoxAddress.Text;
            update.PhoneNumber = TextBoxPhone.Text;
            update.Email = TextBoxEmail.Text;
            update.NRIC = TextBoxChangePassword.Text;

            bool status = memberController.UpdateMemberById(update);
            if (status == true)
                System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE=\"JavaScript\">alert(\"Update Successful !!\")</SCRIPT>");
                //LabelUpdateStatus.Text = "Update Successful !!";
            else
                System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE=\"JavaScript\">alert(\"Update Failed !!\")</SCRIPT>");
                //LabelUpdateStatus.Text = "Update Failed !!";
        }

        protected void ButtonProceed_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["moviecode"] != null)
            {
                Response.Redirect("/MTS_UI/BookingPage.aspx");
            }
            else
                Response.Redirect("/MTS_UI/MoviesUI.aspx");
        }


        protected void ButtonLogout_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["username"] != null)
                Response.Cookies["username"].Expires = DateTime.Now.AddHours(-100);
            Response.Redirect("/MTS_UI/MemberUI.aspx");
        }
    }
}