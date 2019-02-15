using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HtmlAgilityPack;

namespace ASP.NET_pages
{
    public partial class web_scraping : System.Web.UI.Page
    {
        List<string> ImgList = new List<string>();
        List<string> TitleList = new List<string>();
        List<string> UrlList = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            step1();
            getholidays_2018();
        }

        public void step1()
        {
            string url = "https://vod.pl/seriale";

            HtmlDocument document = new HtmlDocument();
            StreamReader reader = new StreamReader(WebRequest.Create(url).GetResponse().GetResponseStream(), Encoding.Default);
            document.Load(reader);

            HtmlNode someNode = document.GetElementbyId("SiteSerialeTop");

            HtmlNodeCollection Link = someNode.SelectNodes("ul/li/span/a");
            HtmlNodeCollection Img = someNode.SelectNodes("ul/li/span/a/img");


            foreach (HtmlNode n in Link)
            {
                HtmlAttribute att = n.Attributes["href"];
                string title = n.InnerText;
                string newurl = att.Value;
                UrlList.Add(newurl);
                TitleList.Add(title);
            }

            foreach (HtmlNode n in Img)
            {
                HtmlAttribute att = n.Attributes["data-original"];
                string src = att.Value;
                ImgList.Add(src);
            }

        }

        private void getholidays_2018()
        {
            int i = 0;
            Panel1.Controls.Add(new LiteralControl("<div class='row1'>"));
            foreach (string u in ImgList)
            {
                Panel1.Controls.Add(new LiteralControl("<div class='serial'>" +
                    "<a title='" + TitleList[i] + "' href=" + UrlList[i] + "> <img src= " + u +"></a>" +
                    "<p>" + TitleList[i] + "</p> </div>"));
                i++;
            }
            Panel1.Controls.Add(new LiteralControl("</div>"));
        }
    }
}