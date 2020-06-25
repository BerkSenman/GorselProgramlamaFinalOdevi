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

namespace haliSahaOdev.PageScreens
{
    /// <summary>
    /// Interaction logic for ReservationAttempt.xaml
    /// </summary>
    public partial class ReservationAttempt : Page
    {
        db_haliSahaEntities db = new db_haliSahaEntities();
        public ReservationAttempt()
        {
            InitializeComponent();           

            var sahalar = db.tbl_saha.ToList();
           
            foreach (var s in sahalar)
            {
                cmbSaha.Items.Add(s.ID);
            }
           
        }        

        string tarih = "";
        private void Tarih_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            var picker = sender as DatePicker;
            DateTime? date = picker.SelectedDate;
            tarih = date.Value.ToShortDateString();
        }

        object secilenSaha;

        private void CmbSaha_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var deger = Convert.ToInt32(cmbSaha.SelectedItem.ToString());
            var saha = db.tbl_saha.Where(y => y.ID == deger).FirstOrDefault();
            sahaAd.Content = "Rezervasyon yapılan sahanın adı: " + saha.SAHA_ADI;
            sahaFiyat.Content = "Rezervasyon yapılan sahanın fiyatı: " + saha.FIYAT;
            sahaKapasite.Content = "Rezervasyon yapılan sahanın kapasitesi: " + saha.KAPASITE;
        }

        private void BtnSaveResAttempt_Click(object sender, RoutedEventArgs e)
        {
            if (cmbSaat.SelectedItem == null || cmbSaha.SelectedItem == null)
            {
                MessageBox.Show("Saat ve Saha bilgilerini eksiksiz doldurunuz!");
            }

            else
            {
                tbl_rezervasyon rezerv = new tbl_rezervasyon();

                var deger=cmbSaha.SelectedItem.ToString();


                rezerv.ID = int.Parse(deger);
                rezerv.Tarih = tarih;
                rezerv.Saat = cmbSaat.Text;
                rezerv.Not = note.Text;
                rezerv.Durum = true;
                db.tbl_rezervasyon.Add(rezerv);
                db.SaveChanges();
            }
        }
    }
}
