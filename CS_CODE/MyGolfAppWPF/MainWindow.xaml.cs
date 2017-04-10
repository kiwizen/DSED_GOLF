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
                DOB_Col = record.GetDateTime(record.GetOrdinal(GOLFDB.DOB)).ToString("d", culture),
                Gender_Col = record[GOLFDB.Gender].ToString(),
                Handicap_Col = record[GOLFDB.Handicap].ToString(),
                Street_Col = record[GOLFDB.Street].ToString(),
                Suburb_Col = record[GOLFDB.Suburb].ToString(),
                City_Col = record[GOLFDB.City].ToString(),
                Available_Col = record[GOLFDB.Availiable_Week_Days].ToString()
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
                        case "Title": SQL += GOLFDB.Title; break;
                        
                        case "First Name": SQL += GOLFDB.FirstName + "+" + GOLFDB.SurName; break;
                        case "Last Name": SQL += GOLFDB.SurName + "+" + GOLFDB.FirstName; break;
                        case "Gender": SQL += GOLFDB.Gender; break;
                        case "Handicap": SQL += GOLFDB.Handicap; break;
                        case "DOB": SQL += GOLFDB.DOB; break;
                        case "Street": SQL += GOLFDB.Street; break;
                        case "Suburb": SQL += GOLFDB.Suburb; break;
                        case "City": SQL += GOLFDB.City; break;
                        case "Available": SQL +=  "[" + GOLFDB.Availiable_Week_Days + "]"; break;
                    }

                    SQL += " " + (direction == ListSortDirection.Ascending ? "ASC" : "DESC");
                    this.ListView_Players.Items.Clear();
                    GOLFDB.ProcessRecord(myDataHandler,SQL);
                    _lastHeaderClicked = headerClicked;
                    _lastDirection = direction;
                }
            }
        }

        private void GridViewRowClickHander(object sender, MouseButtonEventArgs e)
        {
            int i = ListView_Players.SelectedIndex;
            dynamic item = ListView_Players.Items[i];
            txtID.Text = item.ID_Col;
            txtTitle.Text = item.Title_Col;
            txtFirstName.Text = item.FName_Col;
            txtSurName.Text = item.LName_Col;
            txtGender.Text = item.Gender_Col;
            txtHandicap.Text = item.Handicap_Col;
            txtDOB.Text = item.DOB_Col;
            txtStreet.Text = item.Street_Col;
            txtSuburb.Text = item.Suburb_Col;
            txtCity.Text = item.City_Col;
            txtAvailable.Text = item.Available_Col;
        }
    }
}
