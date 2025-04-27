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
using System.Windows.Input;

namespace OrderWave;

public partial class Page2 : UserControl
{
    private readonly MainWindow _mainWindow;
    public ObservableCollection<Waiter> Waiters { get; }
    public ObservableCollection<Customer> Customers { get; }
    public ObservableCollection<Table> Tables { get; }
    public ObservableCollection<Orders> Orders { get; }
    public readonly string _connectionString = "Data Source=DESKTOP-IA8RHKR;Initial Catalog=OrderWave;Integrated Security=True;Encrypt=False";


    public Page2(MainWindow mainWindow)
    {
        _mainWindow = mainWindow;
        InitializeComponent();

        var dataService = new SqlServerDataService();

        Waiters = new ObservableCollection<Waiter>(dataService.GetWaiters());
        Customers = new ObservableCollection<Customer>(dataService.GetCustomers());
        Tables = new ObservableCollection<Table>(dataService.GetTables());
        Orders = new ObservableCollection<Orders>(dataService.GetOrders());

        DataContext = this;
    }



    private void OnNavigateButtonClick(object sender, RoutedEventArgs e)
    {
        _mainWindow.NavigateToPage1();
    }

    private void OnNavigateButton2Click(object sender, RoutedEventArgs e)
    {
        _mainWindow.NavigateToPage3();
    }

    private void AddNewWButtonClick(object sender, RoutedEventArgs e)
    {
        string waiterName = TBW.Text;

        if (string.IsNullOrWhiteSpace(waiterName))
        {
            System.Diagnostics.Debug.WriteLine("Имя официанта пустое или содержит только пробелы!");
            return;
        }

        using (var connection = new SqlConnection(_connectionString))
        {
            connection.Open();

            var command = new SqlCommand("INSERT INTO WAITER (WNAME) VALUES (@Name)", connection);
            command.Parameters.AddWithValue("@Name", waiterName);
            int rowsAffected = command.ExecuteNonQuery();

            // ? Добавляем в привязанную коллекцию
            if (rowsAffected > 0)
            {
                Waiters.Add(new Waiter { Name = waiterName });
                TBW.Text = "";
            }
        }
    }



    private void AddNewCButtonClick(object sender, RoutedEventArgs e)
    {
        string customerName = TBC.Text;
        string customerGender = TBCG.Text;

        if (string.IsNullOrWhiteSpace(customerName))
        {
            System.Diagnostics.Debug.WriteLine("Имя закасчика пустое или содержит только пробелы!");
            return;
        }

        using (var connection = new SqlConnection(_connectionString))
        {
            connection.Open();

            var command = new SqlCommand("INSERT INTO CUSTOMER (CNAME,GENDER) VALUES (@Name,@Gender)", connection);
            command.Parameters.AddWithValue("@Name", customerName);
            command.Parameters.AddWithValue("@Gender", customerGender);
            int rowsAffected = command.ExecuteNonQuery();

            // ? Добавляем в привязанную коллекцию
            if (rowsAffected > 0)
            {
                Customers.Add(new Customer { Name = customerName, Gender = customerGender });
                TBC.Text = "";
                TBCG.Text = "";
            }
        }
    }

    private void AddNewTButtonClick(object sender, RoutedEventArgs e)
    {
    

        if (!int.TryParse(TBT.Text, out int tableNumber))
        {
            System.Diagnostics.Debug.WriteLine("ID официанта, заказчика или стола невалиден!");
            return;
        }



       

        using (var connection = new SqlConnection(_connectionString))
        {
            connection.Open();

            var command = new SqlCommand("INSERT INTO  RESTAURANT_TABLE(TABLE_NUMBER) VALUES (@TableNumber)", connection);
            command.Parameters.AddWithValue("@TableNumber", tableNumber);

            int rowsAffected = command.ExecuteNonQuery();

            // ? Добавляем в привязанную коллекцию
            if (rowsAffected > 0)
            {
                Tables.Add(new Table { TableNumber = tableNumber });
                TBT.Text = "";
            }
        }

    }


    private void AddNewCustomButtonClick(object sender, RoutedEventArgs e)
    {
        if (!int.TryParse(TBWID.Text, out int waiterid) ||
         !int.TryParse(TBCID.Text, out int customerid) ||
         !int.TryParse(TBTID.Text, out int tableid))
        {
            System.Diagnostics.Debug.WriteLine("ID официанта, заказчика или стола невалиден!");
            return;
        }

       

        using (var connection = new SqlConnection(_connectionString))
        {
            connection.Open();

            var command = new SqlCommand("INSERT INTO ORDERS (CUSTOMER_ID,WAITER_ID,TABLE_ID) VALUES (@CustomerId,@WaiterId,@TableId)", connection);
            command.Parameters.AddWithValue("@CustomerId", customerid);
            command.Parameters.AddWithValue("@WaiterId", waiterid);
            command.Parameters.AddWithValue("@TableId", tableid);

            int rowsAffected = command.ExecuteNonQuery();

            if (rowsAffected > 0) 
            {
                Orders.Add(new Orders { WaiterId = waiterid, CustomerId = customerid, TableId = tableid });

                TBWID.Text = "";
                TBCID.Text = "";
                TBTID.Text = "";
            }
        }
    }
}