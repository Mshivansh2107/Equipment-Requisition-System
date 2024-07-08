using System;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Runtime.InteropServices.ComTypes;
using MySql.Data.MySqlClient;

public partial class RequisitionerView : System.Web.UI.Page
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
            string query = "INSERT INTO Requisition (WorkOrderNumber, JobDescription, StartDate, Duration, Plant, JobLocation, MaxLiftingHeightMT, MaxLiftingHeightMTR, AllotmentBasis, CustomerCode, CriticalLift, LiftPlan, ContactDetails, ContractorName, ApproverName) VALUES (@WorkOrderNumber, @JobDescription, @StartDate, @Duration, @Plant, @JobLocation, @MaxLiftingHeightMT, @MaxLiftingHeightMTR, @AllotmentBasis, @CustomerCode, @CriticalLift, @LiftPlan, @ContactDetails, @ContractorName, @ApproverName)";
            MySqlCommand cmd = new MySqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@WorkOrderNumber", workOrderNumber.Value);
            cmd.Parameters.AddWithValue("@JobDescription", jobDescription.Value);
            cmd.Parameters.AddWithValue("@StartDate", startDate.Value);
            cmd.Parameters.AddWithValue("@Duration", duration.Value);
            cmd.Parameters.AddWithValue("@Plant", plant.Value);
            cmd.Parameters.AddWithValue("@JobLocation", jobLocation.Value);
            cmd.Parameters.AddWithValue("@MaxLiftingHeightMT", maxLiftingHeightMT.Value);
            cmd.Parameters.AddWithValue("@MaxLiftingHeightMTR", maxLiftingHeightMTR.Value);
            cmd.Parameters.AddWithValue("@AllotmentBasis", allotmentBasis.Value);
            cmd.Parameters.AddWithValue("@CustomerCode", customerCode.Value);
            cmd.Parameters.AddWithValue("@CriticalLift", criticalLift.Value);
            cmd.Parameters.AddWithValue("@LiftPlan", liftPlan.Value);
            cmd.Parameters.AddWithValue("@ContactDetails", contactDetails.Value);
            cmd.Parameters.AddWithValue("@ContractorName", contractorName.Value);
            cmd.Parameters.AddWithValue("@ApproverName", approverName.Value);

            cmd.ExecuteNonQuery();
        }

        // Send auto-generated email
        SendEmail();
    }

    private void SendEmail()
    {
        MailMessage mail = new MailMessage("your_email@example.com", "approver_email@example.com");
        mail.Subject = "New Requisition Submitted";
        mail.Body = "A new requisition has been submitted. Please review and approve.";

        SmtpClient smtpClient = new SmtpClient("smtp.example.com");
        smtpClient.Port = 587;
        smtpClient.Credentials = new System.Net.NetworkCredential("your_email@example.com", "your_password");
        smtpClient.EnableSsl = true;

        smtpClient.Send(mail);
    }
}
