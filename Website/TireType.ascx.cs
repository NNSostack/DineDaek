using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TireType : System.Web.UI.UserControl
{
    ITireType tireType = null;

    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        tireType = special;

        if (Request.QueryString["type"] != null)
            tireType = alm;
    }
    
    public String Dimensions
    {
        get
        {
            return tireType.Dimensions;

        }
    }

    public String TireMake
    {
        get
        {
            return tireType.TireMake;
        }
    }

    public String Count
    {
        get
        {
            return tireType.Count;
        }
    }

    public String TireTypeString
    {
        get
        {
            return tireType.TireType;  
        }
    }
}