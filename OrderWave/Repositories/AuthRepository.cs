using System.Threading.Tasks;
using OrderWave.Models.Common;
using OrderWave.Models.Auth;
using OrderWave.Services;

namespace OrderWave.Repositories;

public class AuthRepository
{
    private readonly ApiService _apiService;

    public AuthRepository(ApiService apiService)
    {
        _apiService = apiService;
    }

    public Task<ApiResult<LoginResponse>> LoginAsync(string login, string password)
    {
        var request = new LoginRequest{Login = login, Password = password};
        return _apiService.PostAsync<LoginResponse>("/api/authorization/login", request);
    }

}