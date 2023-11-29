using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical3
{
    public partial class BusTicketing : System.Web.UI.Page
    {
            protected void Page_Load(object sender, EventArgs e)
            {
                if (IsPostBack == true) //You can also type as - if (!IsPostBack)
                {
                    lblTime.Text = "You are accessing this page on " +
                    DateTime.Now.ToString();
                }

            txtDepartDt.Text = DateTime.Now.ToShortDateString();
        }

        protected void calDepartDt_SelectionChanged(object sender, EventArgs e)
        {
            txtDepartDt.Text = calDepartDt.SelectedDate.ToShortDateString();
        }

        protected void ddlTo_SelectedIndexChanged(object sender, EventArgs e)
        {
            //0 = --Select Destination--
            //1 = Butterworth
            //2 = Seremban

            //0 = --Select Origin--
            //1 = Hentian Duta
            //2 = Hentian Putra

            //Origin -- Destination
            //1         1 Yes
            //2         1 No
            //1         2 No
            //2         2 Yes
            if (ddlTo.SelectedIndex != ddlFrom.SelectedIndex)
            {
                //Error
                txtPrice.Text = string.Empty;
                lblError.Text = "Sorry, we do not provide service from " + ddlFrom.SelectedItem.Text + " to " + ddlTo.SelectedItem.Text + ".";
                return;

            }
            else
            {
                lblError.Text = string.Empty;
            }

            //Checking missing of input
            if (txtAdult.Text.Length == 0 && TxtChild.Text.Length == 0)
            {
                lblError.Text = "Please enter number of Adult and Child.";
                return;
            }
            else if (TxtChild.Text == string.Empty)
            {
                lblError.Text = "Please enter a number for Adult.";
                return;
            }
            else if (TxtChild.Text.Length == 0)
            {
                lblError.Text = "Please enter a number for Child.";
                return;
            }

            //calculate Ticket Price 
            float price = 0.00f;
            int adult, child;
            adult = Convert.ToInt16(txtAdult.Text);
            child = Convert.ToInt16(TxtChild.Text);

            //Check Origin and Destination 
            if (ddlFrom.SelectedIndex == 1 && ddlTo.SelectedIndex == 1)
            { //From Hentian Duta to Butterworth
                price = (adult * 34.00f) + (child * 25.50f);
            }
            else
            { //From Hentian Putra to Seremban 
                price = (adult * 6.00f) + (child * 4.30f);
            }

            //Display Output
            txtPrice.Text = price.ToString("C2");//MYR

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }
    }
}