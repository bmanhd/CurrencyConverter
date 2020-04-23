using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CurrencyConverter
{
    public partial class mainpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            //all variables
            
            int a, b;
            double convertedSum = 0;
            double[,] exrate = { {1, 1.94, 1.14, 1.24 }, {0.52, 1, 0.59, 0.64}, {0.87, 1.69, 1, 1.08 }, {1.24, 1.57, 0.92, 1} };
            double ddlFrom = Convert.ToDouble(ddlFromCurrency.SelectedIndex);
            double ddlTo = Convert.ToDouble(ddlToCurrency.SelectedIndex);

            double stringInputFrom = 0;
            bool convertedInput = double.TryParse(txtFromCurrency.Text, out stringInputFrom);

            double txtFrom = convertedInput == true ? Convert.ToDouble(txtFromCurrency.Text) : 0;
            if (txtFrom == 0)
            {
                ErrorLabel.Visible = true;
            }

            for (a=0; a < 4; a++)
            {
                for(b = 0; b < 4; b++)
                {
                    if(ddlFrom == a && ddlTo == b)
                    {
                        convertedSum = exrate[a, b];
                        convertedSum = convertedSum * txtFrom;
                    }
                }
            }

            txtToCurrency.Text = Math.Round(convertedSum, 2).ToString();

        }
    }
}