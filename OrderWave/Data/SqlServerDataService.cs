using Microsoft.Data.SqlClient;
using OrderWave.Models;
using System.Collections.Generic;
using static CommunityToolkit.Mvvm.ComponentModel.__Internals.__TaskExtensions.TaskAwaitableWithoutEndValidation;

namespace OrderWave.Data;

public class SqlServerDataService
{
    public readonly string _connectionString = "Data Source=DESKTOP-IA8RHKR;Initial Catalog=OrderWave;Integrated Security=True;Encrypt=False";

    public List<Waiter> GetWaiters()
    {
        var waiters = new List<Waiter>();


        using (var connection = new SqlConnection(_connectionString))
        {
            connection.Open();

            var command = new SqlCommand("SELECT ID, WNAME FROM WAITER", connection);
            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    waiters.Add(new Waiter(
                        reader.GetInt32(0),
                        reader.GetString(1)
                    ));
                }
            }
        }



        return waiters;
    }


    public List<Customer> GetCustomers()
    {
        var customers = new List<Customer>();


        using (var connection = new SqlConnection(_connectionString))
        {
            connection.Open();

            var command = new SqlCommand("SELECT ID, CNAME,GENDER FROM CUSTOMER", connection);
            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    customers.Add(new Customer(
                        reader.GetInt32(0),
                        reader.GetString(1),
                        reader.GetString(2)
                    ));
                }
            }
        }



        return customers;
    }



    public List<Table> GetTables()
    {
        var tables = new List<Table>();


        using (var connection = new SqlConnection(_connectionString))
        {
            connection.Open();

            var command = new SqlCommand("SELECT ID,TABLE_NUMBER FROM RESTAURANT_TABLE", connection);
            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    tables.Add(new Table(
                        reader.GetInt32(0),
                        reader.GetInt32(1)

                    ));
                }
            }
        }



        return tables;
    }



    public List<Orders> GetOrders()
    {
        var orders = new List<Orders>();


        using (var connection = new SqlConnection(_connectionString))
        {
            connection.Open();

            var command = new SqlCommand("SELECT ID,CUSTOMER_ID,WAITER_ID,TABLE_ID,ORDER_DATE FROM ORDERS", connection);
            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    orders.Add(new Orders(
                        reader.GetInt32(0),
                        reader.GetInt32(1),
                        reader.GetInt32(2),
                        reader.GetInt32(3),
                        reader.GetDateTime(4)

                    ));
                }
            }
        }




        return orders;
    }



    public List<Menus> GetMenus()
    {
        var menu = new List<Menus>();


        using (var connection = new SqlConnection(_connectionString))
        {
            connection.Open();

            var command = new SqlCommand("SELECT ID,DISH_NAME FROM MENU", connection);
            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    menu.Add(new Menus(
                        reader.GetInt32(0),
                        reader.GetString(1)

                    ));
                }
            }
        }



        return menu;
    }



}






