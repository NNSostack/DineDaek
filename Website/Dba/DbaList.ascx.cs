using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trancgu.Dba.Repositories;

public partial class Dba_DbaList : System.Web.UI.UserControl
{
    DbaRepository listRepository;

    public Dba_DbaList()
    {
        listRepository = new DbaRepository(new DbaHtml());
    }

    protected static List<Trancgu.Dba.Entities.ListItem> dataSource = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (dataSource == null || Request.QueryString["refresh"] != null )
        {
            dataSource = listRepository.GetList("http://www.dba.dk/forhandler/francks/fid-25566/");
            foreach (var item in dataSource)
            {
                listRepository.UpdateListItem(item.Url, item);
            }
            dataSource = dataSource.Where(x => x.LicensePlate != "").ToList();

        }
        list.DataSource = dataSource;
        DataBind();
    }

    private String emailBodyFormat = @"<STRONG>Navn:</STRONG> {0}
<STRONG>Email:</STRONG> {1}
<STRONG>Kommentar:</STRONG> {2}
<STRONG>Annoncetekst:</STRONG> {3}";

    private String autoEmailBodyFormat = @"Tak for din forespørgsel som vil blive besvaret pr. mail inden for kort tid.
Herunder kan du se, hvilke informationer, der er sendt

Venlig hilsen

{0}

";

    protected void OnClick(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Guid g;
            if( !Guid.TryParse(Request.QueryString["contactInfo"], out g) )
                return;
            
            var listItem = dataSource.FirstOrDefault(x => x.Id == g); 

            if( listItem == null )
                return;

            String body = String.Format(emailBodyFormat, contactName.Text, contactEmail.Text, contactComment.Text, listItem.Title);

            body = body.Replace("\r\n", "<br/>");

            String to = Request.QueryString["to"] ?? "dinedaek@gmail.com";

            MailMessage mm = new MailMessage();

            mm.To.Add(to);
            mm.Subject = String.Format("Kontaktforespørgsel");
            mm.Body = body;

            mm.IsBodyHtml = true;
            mm.ReplyTo = new MailAddress(contactEmail.Text);

            SmtpClient client = new SmtpClient();
            client.Send(mm);

            autoEmailBodyFormat = String.Format(autoEmailBodyFormat.Replace("\r\n", "<br/>"), Global.Title);

            mm.Body = autoEmailBodyFormat + mm.Body;
            mm.BodyEncoding = new UTF8Encoding(true);
            mm.To.Clear();
            mm.To.Add(contactEmail.Text);
            mm.ReplyTo = null;
            mm.Subject = "Autosvar på kontaktforespørgsel hos " + Global.Title;

            client.Send(mm);


            Response.Redirect("/Biler.aspx?showContactThanks=1");
        }
    }

    private String priceEmailBodyFormat = @"<STRONG>Navn:</STRONG> {0}
<STRONG>Email:</STRONG> {1}
<STRONG>Nummerplade:</STRONG> {4}
<STRONG>Kommentar:</STRONG> {2}
<STRONG>Annoncetekst:</STRONG> {3}";


    protected void OnClickPrice(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Guid g;
            if (!Guid.TryParse(Request.QueryString["priceInfo"], out g))
                return;

            var listItem = dataSource.FirstOrDefault(x => x.Id == g);

            if (listItem == null)
                return;

            String body = String.Format(priceEmailBodyFormat, priceName.Text, priceEmail.Text, priceComment.Text, listItem.Title, priceLicenseplate.Text != "" ? "<a href=\"http://www.nummerplade.net/soeg/?regnr=" + priceLicenseplate.Text + "\">" + priceLicenseplate.Text + "</a>" : "");

            body = body.Replace("\r\n", "<br/>");

            String to = Request.QueryString["to"] ?? "dinedaek@gmail.com";

            MailMessage mm = new MailMessage();

            if (priceFileUpload.HasFile)
            {
                string fileName = priceFileUpload.FileName;
                var attachment = new Attachment(priceFileUpload.FileContent, fileName);
                mm.Attachments.Add(attachment);
            }

            mm.To.Add(to);
            mm.Bcc.Add("nns@email.dk");
            mm.Subject = String.Format("Byttepris-forespørgsel");
            mm.Body = body;

            mm.IsBodyHtml = true;
            mm.ReplyTo = new MailAddress(priceEmail.Text);

            SmtpClient client = new SmtpClient();
            client.Send(mm);

            autoEmailBodyFormat = String.Format(autoEmailBodyFormat.Replace("\r\n", "<br/>"), Global.Title);

            mm.Body = autoEmailBodyFormat + mm.Body;
            mm.BodyEncoding = new UTF8Encoding(true);
            mm.To.Clear();
            mm.To.Add(priceEmail.Text);
            mm.ReplyTo = null;
            mm.Subject = "Autosvar på byttepris-forespørgsel hos " + Global.Title;

            client.Send(mm);
            
            Response.Redirect("/Biler.aspx?showContactThanks=1");
        }
    }

}