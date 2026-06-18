namespace OrderWave.Models.Auth;

public class LoginResponse
{
    public int UserId { get; set; }
    public string Login { get; set; } = string.Empty;
    public string Role { get; set; } = string.Empty;
    public string Token { get; set; } = string.Empty;
}