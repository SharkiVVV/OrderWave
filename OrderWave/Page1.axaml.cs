using Avalonia;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Markup.Xaml;
using Avalonia.Media;
using Microsoft.Data.SqlClient;
using OrderWave.Data;
using OrderWave.Models;
using OrderWave.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Reflection.PortableExecutable;
//using static CommunityToolkit.Mvvm.ComponentModel.__Internals.__TaskExtensions.TaskAwaitableWithoutEndValidation; i have no idea why this here  
namespace OrderWave;



public partial class Page1 : UserControl
{
    private readonly MainWindow _mainWindow;

    string login = "Sharki";
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
            TBL.BorderBrush = Brushes.Green;


        }
        else
        {
            Buttton.IsEnabled = false;
            TBL.BorderBrush = Brushes. Red;


        }

    }

    private void OnNavigateButtonClick(object sender, RoutedEventArgs e)
    {
        _mainWindow.NavigateToPage2();

    }

}
