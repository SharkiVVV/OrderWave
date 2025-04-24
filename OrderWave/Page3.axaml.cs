using Avalonia;
using System;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Markup.Xaml;
using OrderWave.Models;
using OrderWave.Data;
using System.Collections.ObjectModel;
using OrderWave.Views;
using static CommunityToolkit.Mvvm.ComponentModel.__Internals.__TaskExtensions.TaskAwaitableWithoutEndValidation;
using Microsoft.Data.SqlClient;
using System.Reflection.PortableExecutable;
using System.Collections.Generic;


namespace OrderWave;

public partial class Page3 : UserControl
{
    private readonly MainWindow _mainWindow;
    public ObservableCollection<Orders> Orders { get; }
    public readonly string _connectionString = "Data Source=DESKTOP-IA8RHKR;Initial Catalog=OrderWave;Integrated Security=True;Encrypt=False";
    public Page3(MainWindow mainWindow)
    {
        _mainWindow = mainWindow;
        InitializeComponent();

        var dataService = new SqlServerDataService();

        Orders = new ObservableCollection<Orders>(dataService.GetOrders());

        DataContext = this;
    }


    private void OnNavigateButtonClick(object sender, RoutedEventArgs e)
    {
        _mainWindow.NavigateToPage2();

    }
}