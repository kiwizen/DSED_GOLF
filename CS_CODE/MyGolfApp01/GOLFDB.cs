using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace MyGolfApp01
{
    class GOLFDB
    {
        private static string ConnectionString = @"Server=tcp:kiwizen-dsed.database.windows.net,1433;Initial Catalog=DSED_GOLF;Persist Security Info=False;User ID=kiwizen-dsed;Password=Monday99;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
   
        public static string ID { get => "ID"; }
        public static string Title { get => "Title"; }
        public static string SurName { get => "Surname"; }
        public static string FirstName { get => "Firstname"; }
        public static string Gender { get => "Gender"; }
        public static string DOB { get => "DOB";  }
        public static string Street { get => "Street"; }
        public static string Suburb { get => "Suburd"; }
        public static string City { get => "City"; }
        public static string Availiable_Week_Days { get => "Available week days"; }
        public static string Handicap { get => "Handicap"; }

        string[] db_feilds = new string[] {
                "ID", "Surname", "Firstname", "Title",
                "Gender", "DOB","Street","Suburb", "City",
                "Available week days", "Handicap"
            };

        public delegate void ProcessRecordHandler(SqlDataReader record);

        public static void ProcessRecord(ProcessRecordHandler recordHandler)
        {
            string SelectAllQuery = 
                "SELECT [ID],[Surname],[Firstname],[Title],[Gender],[DOB],[Street]" +
                ",[Suburb],[City],[Available week days],[Handicap]" +
                "FROM[dbo].[golf]";

            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                try
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(SelectAllQuery,connection))
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        Dictionary<string, string> dict_Record =
                                        new Dictionary<string, string>();
                        while (reader.Read())
                        {
                            if (recordHandler != null)
                                recordHandler(reader);
                        }
                    }
                    connection.Close();
                }
                catch( Exception e)
                { }
                finally
                {
                    connection.Close();
                }
                
            }
        }

    }
}
