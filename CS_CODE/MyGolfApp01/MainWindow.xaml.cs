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
using System.ComponentModel;

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
            this.ListView_Players.Items.Add(new {
                ID_Col = record[GOLFDB.ID].ToString(),
                Title_Col = record[GOLFDB.Title].ToString(),
                FName_Col = record[GOLFDB.FirstName].ToString(),
                LName_Col = record[GOLFDB.SurName].ToString(),
                DOB_Col = record.GetDateTime(record.GetOrdinal(GOLFDB.DOB)).ToString("d", culture)

                
            });

        }

        private GridViewColumnHeader _lastHeaderClicked = null;
        private ListSortDirection _lastDirection = ListSortDirection.Ascending;

        private void GridViewColumnHeaderClickedHandler(object sender, RoutedEventArgs e)
        {
            GridViewColumnHeader headerClicked =
                  e.OriginalSource as GridViewColumnHeader;
            ListSortDirection direction;

            if (headerClicked != null)
            {
                if (headerClicked.Role != GridViewColumnHeaderRole.Padding)
                {
                    if (_lastHeaderClicked != null && headerClicked != _lastHeaderClicked)
                    {
                        direction = ListSortDirection.Ascending;
                    }
                    else
                    {
                        if (_lastDirection == ListSortDirection.Ascending)
                        {
                            direction = ListSortDirection.Descending;
                        }
                        else
                        {
                            direction = ListSortDirection.Ascending;
                        }
                    }

                    string header = headerClicked.Column.Header as string;
                    string SQL = " ORDER BY ";
                    switch(header)
                    {
                        case "ID": SQL += GOLFDB.ID; break;
                        case "DOB": SQL += GOLFDB.DOB; break;
                        case "First Name": SQL += GOLFDB.FirstName + "+" + GOLFDB.SurName; break;
                        case "Last Name": SQL += GOLFDB.SurName + "+" + GOLFDB.FirstName; break;
                        case "Title": SQL += GOLFDB.Title;break;
                    }

                    SQL += " " + (direction == ListSortDirection.Ascending ? "ASC" : "DESC");
                    this.ListView_Players.Items.Clear();
                    GOLFDB.ProcessRecord(myDataHandler,SQL);
                    _lastHeaderClicked = headerClicked;
                    _lastDirection = direction;
                }
            }
        }
    }
}
