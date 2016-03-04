using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Global
/// </summary>
public class Global
{
    public static String Title
    {
        get
        {
            return System.Web.HttpContext.Current.Items["title"] as String + "Danmarks garanteret billigste dæk - " + Host;
        }
        set
        {
            System.Web.HttpContext.Current.Items["title"] = value + " - ";
        }
    }

    public static String Host
    {
        get
        {
            return "dinedæk.dk";
        }
    }
}