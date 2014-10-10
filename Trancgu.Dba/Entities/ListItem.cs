using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Trancgu.Dba.Entities
{
    public class TableEntry
    {
        public String TableHeader { get; set; }
        public String TableData { get; set; }
    }


    public class ListItem
    {
        public ListItem()
        {
            Table = new List<TableEntry>();
            Id = Guid.NewGuid();
        }
        public Guid Id { get; set; }
        public String Url { get; set; }
        public Image Image { get; set; }
        public String Title { get; set; }
        public String Price { get; set; }
        public String Date { get; set; }

        String _licensePlate = null;
        public String LicensePlate
        {
            get
            {
                if( _licensePlate != null )
                    return _licensePlate;

                _licensePlate = "";

                if (String.IsNullOrEmpty(Text))
                    return "";

                String find = "nummerplade: ";
                int startIndex = Text.ToLower().IndexOf(find);
                if (startIndex > -1)
                {
                    startIndex += find.Length;
                    int endIndex = Text.IndexOf("<", startIndex);
                    _licensePlate = Text.Substring(startIndex, endIndex - startIndex);
                }
                
                return _licensePlate;
           }

        }
        public List<TableEntry> Table { get; set; }
        public String Text { get; set; }
    }
}
