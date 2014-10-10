using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Trancgu.Dba.Interfaces
{
    public interface IDbaHtml
    {
        String GetDbaListHtml(String url);
        String GetDbaListItemHtml(String url);
    }
}
