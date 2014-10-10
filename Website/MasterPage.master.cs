using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected override void OnPreRender(EventArgs e)
    {
        base.OnPreRender(e);
        DataBind();
    }

    private String emailBodyFormat = @"<STRONG>Navn:</STRONG> {0}
<STRONG>Email:</STRONG> {1}
<STRONG>Kommentar:</STRONG> {2}";

    private String autoEmailBodyFormat = @"Tak for din forespørgsel som vil blive besvaret pr. mail inden for kort tid.
Herunder kan du se, hvilke informationer, der er sendt

Venlig hilsen

{0}

";

    protected void OnClick(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            String body = String.Format(emailBodyFormat, name.Text, email.Text, comment.Text);

            body = body.Replace("\r\n", "<br/>");

            String to = Request.QueryString["to"] ?? "trancku@gmail.com";

            MailMessage mm = new MailMessage();

            mm.To.Add(to);
            mm.Bcc.Add("nns@email.dk");
            mm.Subject = String.Format("Kontaktforespørgsel");
            mm.Body = body;

            mm.IsBodyHtml = true;
            mm.ReplyTo = new MailAddress(email.Text);

            SmtpClient client = new SmtpClient();
            client.Send(mm);

            autoEmailBodyFormat = String.Format(autoEmailBodyFormat.Replace("\r\n", "<br/>"), Global.Title);

            mm.Body = autoEmailBodyFormat + mm.Body;
            mm.BodyEncoding = new UTF8Encoding(true);
            mm.To.Clear();
            mm.To.Add(email.Text);
            mm.ReplyTo = null;
            mm.Subject = "Autosvar på kontaktforespørgsel hos " + Global.Title;

            client.Send(mm);


            Response.Redirect("?showContactThanks=1");
        }
    }
}
