namespace OrderWave.Models.Waiters;

public class WaiterMeDto
{
    public int WaiterId { get; set; }
    public int? ShiftId { get; set; }
    public bool IsOnShift { get; set; }
}