using System;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using Microsoft.Win32;
using WheelyGoodCars.Controller;
using WheelyGoodCars.Model;

namespace WheelyGoodCars
{
    public partial class MainWindow : Window
    {
        private CarController _carController;
        private int currentStep = 1;
        private string selectedImagePath = null;

        public MainWindow()
        {
            InitializeComponent();
            _carController = new CarController();
            LoadCars();
        }

        private void LoadCars()
        {
            CarsListView.ItemsSource = _carController.ListCars();
        }

        private void NextStep_Click(object sender, RoutedEventArgs e)
        {
            currentStep++;
            UpdateSteps();
        }

        private void PreviousStep_Click(object sender, RoutedEventArgs e)
        {
            currentStep--;
            UpdateSteps();
        }

        private void UpdateSteps()
        {
            Step1.Visibility = currentStep == 1 ? Visibility.Visible : Visibility.Collapsed;
            Step2.Visibility = currentStep == 2 ? Visibility.Visible : Visibility.Collapsed;
            Step3.Visibility = currentStep == 3 ? Visibility.Visible : Visibility.Collapsed;

            StepProgressBar.Value = currentStep;
        }


        private void UploadImageButton_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Afbeeldingen (*.jpg;*.png)|*.jpg;*.png";

            if (openFileDialog.ShowDialog() == true)
            {
                string imagesFolder = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Images");
                if (!Directory.Exists(imagesFolder))
                {
                    Directory.CreateDirectory(imagesFolder);
                }

                string fileName = Path.GetFileName(openFileDialog.FileName);
                string destinationPath = Path.Combine(imagesFolder, fileName);

                File.Copy(openFileDialog.FileName, destinationPath, true);
                selectedImagePath = destinationPath;

                MessageBox.Show("Afbeelding geüpload!");
            }
        }

        private void AddCarButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var licensePlate = LicensePlateTextBox.Text;
                var brand = BrandTextBox.Text;
                var model = ModelTextBox.Text;
                var priceText = PriceTextBox.Text;
                var description = DescriptionTextBox.Text;

                if (string.IsNullOrWhiteSpace(licensePlate) || string.IsNullOrWhiteSpace(brand) ||
                    string.IsNullOrWhiteSpace(model) || string.IsNullOrWhiteSpace(description))
                {
                    MessageBox.Show("Vul alle velden in.", "Fout", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                if (!decimal.TryParse(priceText, out var price))
                {
                    MessageBox.Show("Geef een geldige prijs in.", "Fout", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                _carController.AddCar(licensePlate, brand, model, price, description, selectedImagePath);
                LoadCars();

                LicensePlateTextBox.Clear();
                BrandTextBox.Clear();
                ModelTextBox.Clear();
                PriceTextBox.Clear();
                DescriptionTextBox.Clear();
                selectedImagePath = null;

                MessageBox.Show("Auto toegevoegd!", "Succes", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Er is een fout opgetreden: {ex.Message}", "Fout", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void DeleteCarButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var carIdText = CarIdToDeleteTextBox.Text;

                if (string.IsNullOrWhiteSpace(carIdText) || !int.TryParse(carIdText, out var id))
                {
                    MessageBox.Show("Geef een geldig ID in.", "Fout", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                _carController.DeleteCar(id);
                LoadCars();

                CarIdToDeleteTextBox.Clear();

                MessageBox.Show("Auto verwijderd!", "Succes", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Er is een fout opgetreden: {ex.Message}", "Fout", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void TextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            TextBox textBox = sender as TextBox;
            if (textBox != null && textBox.Text == textBox.Tag?.ToString())
            {
                textBox.Clear();
            }
        }

        private void TextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            TextBox textBox = sender as TextBox;
            if (textBox != null && string.IsNullOrWhiteSpace(textBox.Text))
            {
                textBox.Text = textBox.Tag?.ToString();
            }
        }
    }
}
