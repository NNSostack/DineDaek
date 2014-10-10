using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TireTypeAlm : System.Web.UI.UserControl, ITireType
{
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);

        if (!IsPostBack)
        {
            String type = Request.QueryString["type"];
            if (type == "winter")
                ddTireType.SelectedIndex = 1;
            if (type == "summer")
                ddTireType.SelectedIndex = 2;
            if (type == "allyear")
                ddTireType.SelectedIndex = 3;
            

        }
    }

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
            return ddTireType.SelectedValue;  
        }
    }

    protected void OnTireTypeServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = ddTireType.SelectedIndex > 0;
    }

}