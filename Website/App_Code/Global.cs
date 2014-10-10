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
            return Host + " - danmarks billigste dæk";
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