using System;

namespace OrderWave.Models;

public class Waiter
{
    public int Id { get; set; }
    public string Name { get; set; }

    public Waiter(int id, string name)
    {
        Id = id;
        Name = name;
    }

    public Waiter() { }
}

public class Customer
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Gender { get; set; }

    public Customer(int id, string name, string gender)
    {
        Id = id;
        Name = name;
        Gender = gender;
    }

    public Customer() { }
}


public class Table
{
    public int Id { get; set; }
    public int TableNumber { get; set; }
   
    public Table(int id, int tablenumber)
    {
        Id = id;
        TableNumber = tablenumber;
       
    }

    public Table() { }
}

public class Orders
{
    public int Id { get; set; }
    public int CustomerId { get; set; }
    public int WaiterId { get; set; }

    public int TableId { get; set; }


    public DateTime OrderDate { get; set; }

    public Orders(int id, int customerid, int waiterid, int tableid, DateTime orderDate)
    {
        Id = id;
        CustomerId = customerid;
        WaiterId = waiterid;
        TableId = tableid;
        OrderDate = orderDate;
    }

    public Orders() { }
}