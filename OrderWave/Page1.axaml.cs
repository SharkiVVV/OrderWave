using Avalonia;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Markup.Xaml;
using OrderWave.Models;
using OrderWave.Data;
using System.Collections.ObjectModel;
using OrderWave.Views;
namespace OrderWave;
public partial class Page1 : UserControl
{
    private readonly MainWindow _mainWindow;

    string login = "Mart";
    string password = "1234";

    public Page1(MainWindow mainWindow)
    {
        _mainWindow = mainWindow;
        InitializeComponent();
        DataContext = this;
    }




    private void CheckLoginandPassword(object? sender, Avalonia.Controls.TextChangedEventArgs e)

    {
        string TextBoxLogin = TBL.Text;
        string TextBoxPassword = TBP.Text;
        if (TextBoxLogin == login && TextBoxPassword == password)
        {
            Buttton.IsEnabled = true;
            
        }
        else
        {
            Buttton.IsEnabled = false;
        }

    }

    private void OnNavigateButtonClick(object sender, RoutedEventArgs e)
    {
        _mainWindow.NavigateToPage2();

    }

}
