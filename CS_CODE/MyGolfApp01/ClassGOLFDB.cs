using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyGolfApp01
{
    class ClassGOLFDB
    {

        string showAllData = "SELECT [ID] ,[Surname], " +
            "[Firstname],[Title],[Gender],[DOB],[Street]," +
            "[Suburb],[City],[Available week days],[Handicap]" +
                                "FROM[dbo].[golf]" ;

        private string[] db_feilds = new string [] {
                "ID", "Surname", "Firstname", "Title",
                "Gender", "DOB","Street","Suburb", "City",
                "Available week days", "Handicap"
            };

    }
}
