using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using Trancgu.Dba.Interfaces;

namespace Trancgu.Dba.Repositories
{
    public class DbaHtml : IDbaHtml
    {
        public string GetDbaListHtml(string url)
        {
            WebClient client = new WebClient();
            HtmlAgilityPack.HtmlDocument doc = new HtmlAgilityPack.HtmlDocument();
            var html = client.DownloadString(url);

            doc.LoadHtml(html);
            var ret = doc.DocumentNode.SelectSingleNode("//table[contains(@class, 'searchResults srpListView')]").OuterHtml;

            return ret;

        }


        public string GetDbaListItemHtml(string url)
        {
            WebClient client = new WebClient();
            client.Encoding = Encoding.UTF8;
            HtmlAgilityPack.HtmlDocument doc = new HtmlAgilityPack.HtmlDocument();
            var html = client.DownloadString(url);

            doc.LoadHtml(html);
            var ret = doc.DocumentNode.SelectSingleNode("//div[contains(@class, 'basicBox')]").OuterHtml;

            return ret;

        }
    }
}
