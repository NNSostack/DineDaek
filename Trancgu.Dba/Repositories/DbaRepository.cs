using HtmlAgilityPack;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Trancgu.Dba.Entities;
using Trancgu.Dba.Interfaces;

namespace Trancgu.Dba.Repositories
{
    public class DbaRepository
    {
        IDbaHtml _idbaHtml = null;
        public DbaRepository(IDbaHtml dbaListHtml)
        {
            _idbaHtml = dbaListHtml;
        }

        public List<ListItem> GetList(String url)
        {
            var html = _idbaHtml.GetDbaListHtml(url);

            HtmlAgilityPack.HtmlDocument doc = new HtmlAgilityPack.HtmlDocument();
            doc.LoadHtml(html);

            var list = new List<ListItem>();
            foreach (var tr in doc.DocumentNode.SelectNodes("//tr[contains(@class, 'dbaListing listing')]"))
            {
                list.Add(iGetListItem(tr));
            }

            return list;
        }

        private ListItem iGetListItem(HtmlNode tr)
        {
            ListItem li = new ListItem();

            li.Url = tr.Descendants("a").First().Attributes["href"].Value;
            li.Title = tr.Descendants("span").Where(x => x.Attributes["class"] != null && x.Attributes["class"].Value == "text").First().InnerHtml;
            li.Date = tr.SelectNodes("td[contains(@class, 'simple noWrap')]").First().InnerHtml;
            li.Price = tr.SelectNodes("td[contains(@class, 'simple noWrap')]").Last().InnerHtml;

            li.Image = new Image();
            if ( tr.Descendants("img").Any() )
            {
                li.Image.Source = tr.Descendants("img").First().Attributes["data-original"].Value;
                li.Image.Title = tr.Descendants("img").First().Attributes["alt"].Value;
            }

            return li;
        }

        public void UpdateListItem(String url, ListItem item)
        {
            var html = _idbaHtml.GetDbaListItemHtml(url);

            HtmlAgilityPack.HtmlDocument doc = new HtmlAgilityPack.HtmlDocument();
            doc.LoadHtml(html);

            foreach (var node in doc.DocumentNode.SelectNodes("//th"))
            {
                var entry = new TableEntry
                {
                    TableHeader = node.InnerHtml.Replace("\r\n", "").Trim(),
                    TableData = node.NextSibling.NextSibling.InnerHtml.Replace("\r\n", "").Trim()
                };
                
                item.Table.Add(entry);

            }
            item.Table = item.Table.OrderBy(x => x.TableHeader).ToList();
            item.Text = doc.DocumentNode.SelectSingleNode("//div[contains(@class, 'listingText')]").OuterHtml;  
        }

    }
}
