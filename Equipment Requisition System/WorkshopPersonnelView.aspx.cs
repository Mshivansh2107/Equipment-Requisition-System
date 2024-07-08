using System;
using System.Data.SqlClient;
using System.Net.Mail;
using Antlr.Runtime.Misc;
using MySql.Data.MySqlClient;

public partial class WorkshopPersonnelView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void SubmitForm(object sender, EventArgs e)
    {
        string connectionString = "your_connection_string";
        using (MySqlConnection conn = new MySqlConnection(connectionString))
        {
            conn.Open();
            string query = "UPDATE Requisition SET Remarks=@Remarks, Action=@Action, AllotedFor=@AllotedFor, ApproverName=@ApproverName WHERE WorkOrderNumber=@WorkOrderNumber";
            MySqlCommand cmd = new MySqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Remarks", remarks.Value);
            cmd.Parameters.AddWithValue("@Action", action.Value);
            cmd.Parameters.AddWithValue("@AllotedFor", allotedFor.Value);
            cmd.Parameters.AddWithValue("@ApproverName", approverName.Value);
            cmd.Parameters.AddWithValue("@WorkOrderNumber", workOrderNumber.Value);

            cmd.ExecuteNonQuery();
        }

        // Send auto-generated email
        SendEmail();
    }

    private void SendEmail()
    {
        MailMessage mail = new MailMessage("your_email@example.com", "requisitioner_email@example.com");
        mail.Subject = "Requisition Action Taken by Workshop";
        mail.Body = "A requisition has been reviewed by the workshop. Please check the action taken.";

        SmtpClient smtpClient = new SmtpClient("smtp.example.com");
        smtpClient.Port = 587;
        smtpClient.Credentials = new System.Net.NetworkCredential("your_email@example.com", "your_password");
        smtpClient.EnableSsl = true;

        smtpClient.Send(mail);
    }
}
