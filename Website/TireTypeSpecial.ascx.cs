using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TireTypeSpecial : System.Web.UI.UserControl, ITireType
{
    public String Dimensions
    {
        get
        {
            return tireDim.SelectedValue + " / " + tireDim2.SelectedValue + " / " + tireDim3.SelectedValue;

        }
    }

    public String TireMake
    {
        get
        {
            return ddTireMake.SelectedValue;
        }
    }

    public String Count
    {
        get
        {
            return count.SelectedValue;
        }
    }

    public String TireType
    {
        get
        {
            return "Specialdæk";
        }
    }
}