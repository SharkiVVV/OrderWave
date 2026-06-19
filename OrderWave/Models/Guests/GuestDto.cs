namespace OrderWave.Models.Tables;

public class GuestDto
{
    public int GuestId { get; set; }
    public string GuestName { get; set; } = string.Empty;
    public string? GuestSurname { get; set; }
    public decimal TotalAmount { get; set; }
}