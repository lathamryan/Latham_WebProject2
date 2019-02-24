using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BMI_Calc
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            //Intake of each variable from the main form
            string name = Convert.ToString(txtName.Text);
            int age = Convert.ToInt32(txtAge.Text);
            decimal convertheightft = Convert.ToDecimal(txtHeightFt.Text);
            decimal convertheightin = Convert.ToDecimal(txtHeightIn.Text);
            decimal convertweight = Convert.ToDecimal(txtWeight.Text);

            //Perform calculation to convert feet/inches to meters and pounds to kilograms
            decimal totalheight_m = ((convertheightft * 12m) + convertheightin) * .025m;
            decimal totalweight_kg = convertweight * .45m;

            //Peform BMI calculation and send to output text box
            decimal BMI = totalweight_kg /(decimal)Math.Pow((double)totalheight_m, (double)2);
            txtBMIoutput.Text = "Hi " + name + ", your estimated BMI is " + BMI.ToString("#.00");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtAge.Text = "";
            txtHeightFt.Text = "";
            txtHeightIn.Text = "";
            txtWeight.Text = "";
            txtBMIoutput.Text = "";
        }
    }
}