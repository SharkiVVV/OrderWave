using Avalonia.Media;

namespace OrderWave;

public static class  AppSession
{
    public static string? Token { get; set; }
    public static string? Role { get; set; }
    public static int UserId { get; set; }
    public static int WaiterId { get; set; }
    public static int? ShiftId { get; set; }

    public static bool IsAdmin => Role == "Admin";
    public static bool IsWaiter => Role == "Waiter";

    public static void Clear()
    {
        Token = null;
        Role = null;
        UserId = 0;
        WaiterId = 0;
        ShiftId = null;
    }
}

