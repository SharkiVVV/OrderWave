namespace OrderWave.Models.Tables;

public class TableDto
{
    public int TableId { get; set; }
    public int TableNumber { get; set; }
    public int TableCapacity { get; set; }
    public bool IsActive { get; set; }
    public bool IsOccupied { get; set; }
    public int? SessionId { get; set; }
    public int GuestsAmount { get; set; }
    public decimal TotalAmount { get; set; }
    

}
