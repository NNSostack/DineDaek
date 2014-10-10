using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ITireType
/// </summary>
public interface ITireType
{
    String Dimensions { get; }
    String TireMake { get; }
    String Count { get; }
    String TireType { get; }
}