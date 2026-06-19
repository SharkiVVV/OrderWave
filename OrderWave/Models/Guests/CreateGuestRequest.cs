namespace OrderWave.Models.Guests;

public class CreateGuestRequest
{
    public string GuestName { get; set; } = string.Empty;
    public string? GuestSurname { get; set; }
}