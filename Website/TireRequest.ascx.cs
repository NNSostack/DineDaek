using System;
using System.Collections.Generic;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TireRequest : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataBind();

        if (!IsPostBack)
        {

            //OwnerOfPostback = false;
            //EmailSend = false;
        }
    }

    protected void OnServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = true;
        try
        {
            MailAddress mm = new MailAddress(email.Text);
        }
        catch (Exception)
        {
            args.IsValid = false;        
        }
    }



    //private Boolean EmailSend
    //{
    //    get { return (Boolean) (Session[TireType + "-EmailSend"] ?? false); }

    //    set { Session[TireType + "-EmailSend"] = value; }

    //}

    private String emailBodyFormat = @"<STRONG>Navn:</STRONG> {0}
<STRONG>Email:</STRONG> {1}
<STRONG>Type:</STRONG> {6}
<STRONG>Dækmærke:</STRONG> {2}
<STRONG>Dækdimensioner:</STRONG> {3} 
<STRONG>Antal:</STRONG> {4}
<STRONG>Evt. kommentar:</STRONG> {5}";


    private String autoEmailBodyFormat = @"Hej {1}

Dette er ikke en ordre. Tilbud på forespurgte vil blive sendt pr. mail inden for kort tid.
Herunder kan du se, hvilke informationer, der er sendt

Venlig hilsen

{0}

"; 

    protected void OnClick(object sender, EventArgs e)
    {
        //  If hidden is typed we know that it is spam
        if (hidden.Text.Length > 0)
            return;

        //OwnerOfPostback = true;

        if (Page.IsValid)
        {
            form.Visible = false;
            thanx.Visible = true;

            //if (!EmailSend)
            {
                String body = String.Format(emailBodyFormat, name.Text, email.Text, tireType.TireMake, tireType.Dimensions, tireType.Count,
                                            comment.Text,
                                            tireType.TireTypeString);

                body = body.Replace("\r\n", "<br/>");

                String to = Request.QueryString["to"] ?? "dinedaek@gmail.com";

                MailMessage mm = new MailMessage();

                mm.To.Add(to);
                mm.Bcc.Add("nns@email.dk");
                mm.Subject = String.Format("Forespørgsel på {0} {1}", tireType.Count, tireType.TireTypeString);
                mm.Body = body;
                mm.BodyEncoding = new UTF8Encoding(true);
                mm.IsBodyHtml = true;
                mm.ReplyTo = new MailAddress(email.Text); 
 
                SmtpClient client = new SmtpClient();
                client.Send(mm);

                autoEmailBodyFormat = String.Format(autoEmailBodyFormat.Replace("\r\n", "<br/>"), Global.Title, name.Text);

                mm.Body = autoEmailBodyFormat + mm.Body;
                mm.To.Clear();
                mm.To.Add(email.Text);
                mm.ReplyTo = new MailAddress("dinedaek@gmail.com");
                mm.Subject = String.Format("Autosvar på forespørgsel på {0} {1} hos {2}", tireType.Count, tireType.TireTypeString, Global.Title);

                client.Send(mm);

                Response.Redirect("?showThanks=1");


            }
        }

    }
}