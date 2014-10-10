using Microsoft.VisualStudio.TestTools.UnitTesting;
using NSubstitute;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Trancgu.Dba.Entities;
using Trancgu.Dba.Interfaces;
using Trancgu.Dba.Repositories;

namespace Trancgu.Dba.Test
{
    [TestClass]
    public class DbaListHtmlTest
    {
        [TestMethod]
        public void GetDbaListHtmlTest()
        {
            var listHtml = Substitute.For<IDbaHtml>();
            listHtml.GetDbaListHtml("myUrl").Returns(System.IO.File.ReadAllText(System.Environment.CurrentDirectory + "\\TestData\\DbaList.html"));    

            DbaRepository listRepository = new DbaRepository(listHtml);

            var list = listRepository.GetList("myUrl");

            Assert.AreEqual(5, list.Count);

            TestListItem(list[0],
                "http://www.dba.dk/alufaelge-18-bmw-245--40/id-93103652/",
                new Image { Source = "http://dbastatic.dk/pictures/pictures/admanager/1a/a2/6e56-af18-41ea-ad8b-5df21b9a6adb.jpg?preset=thumbnail", Title = "Alufælge, 18&amp;quot;, BMW, 245 /40 /R18, krydsmål 5 x 120, ET 15, sommerdæk, Goodyear..." },
                "Alufælge, 18\", BMW, 245 /40 /R18, krydsmål 5 x 120, ET 15, sommerdæk, Goodyear...",
                "3.400 kr.",
                "8. jun");

            TestListItem(list[2],
                "http://www.dba.dk/fletcher-motorbaad-aarg-2002/id-93350226/",
                new Image { Source = "http://dbastatic.dk/pictures/pictures/admanager/4e/18/9fd3-0a7f-4b5f-8bdc-6773538092bf.jpg?preset=thumbnail", Title = "Fletcher, Motorbåd, årg. 2002, 17 fod, 0 sovepladser, 130 hk, Yamaha, benzin..." },
                "Fletcher, Motorbåd, årg. 2002, 17 fod, 0 sovepladser, 130 hk, Yamaha, benzin...",
                "92.000 kr.",
                "3. jun");
        }

        void TestListItem(ListItem item, String url, Image image, String title, String price, String date)
        {
            Assert.AreEqual(url, item.Url);
            Assert.AreEqual(image.Source, item.Image.Source);
            Assert.AreEqual(image.Title, item.Image.Title);
            Assert.AreEqual(title, item.Title);
            Assert.AreEqual(price, item.Price);
            Assert.AreEqual(date, item.Date);
        }


        [TestMethod]
        public void GetDbaListItemHtmlTest()
        {
            var listHtml = Substitute.For<IDbaHtml>();
            ListItem item = new ListItem();
            
            listHtml.GetDbaListItemHtml("myUrl").Returns(System.IO.File.ReadAllText(System.Environment.CurrentDirectory + "\\TestData\\DbaListItem.html"));

            DbaRepository listRepository = new DbaRepository(listHtml);

            listRepository.UpdateListItem("myUrl", item);

            
        }


    }
}
