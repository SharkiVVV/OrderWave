namespace OrderWave.Models.Tables;

public class CreateGuestRequest
{
    public string GuestName { get; set; } = string.Empty;
    public string? GuestSurname { get; set; }
}