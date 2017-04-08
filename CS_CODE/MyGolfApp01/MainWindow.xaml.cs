using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace MyGolfApp01
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        GOLFDB.ProcessRecordHandler myDataHandler = null;

        public MainWindow()
        {
            InitializeComponent();
            WindowStartupLocation = System.Windows.WindowStartupLocation.CenterScreen;
            myDataHandler = this.InitializeListBox_PlayerList;
            GOLFDB.ProcessRecord(myDataHandler);
            
        }

        private void InitializeListBox_PlayerList(System.Data.SqlClient.SqlDataReader record)
        {
            System.Globalization.CultureInfo culture = new System.Globalization.CultureInfo("fr-FR");
            this.ListBox_PlayerList.Items.Add(new {
                ID_Col = record[GOLFDB.ID].ToString(),
                Title_Col = record[GOLFDB.Title].ToString(),
                FName_Col = record[GOLFDB.FirstName].ToString(),
                LName_Col = record[GOLFDB.SurName].ToString(),
                DOB_Col = record.GetDateTime(record.GetOrdinal(GOLFDB.DOB)).ToString("d", culture)

                
            });
        }
    }
}
