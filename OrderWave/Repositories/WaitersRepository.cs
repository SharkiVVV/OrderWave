using System.Collections.Generic;
using System.Threading.Tasks;
using OrderWave.Models.Common;
using OrderWave.Models.Waiters;
using OrderWave.Services;


namespace OrderWave.Repositories;

public class WaitersRepository
{
    private readonly ApiService _apiService;

    public WaitersRepository(ApiService apiService)
    {
        _apiService = apiService;
    }
    
    public Task<ApiResult<WaiterMeDto>> GetMeAsync()
        => _apiService.GetAsync<WaiterMeDto>("/api/waiters/me");
    public Task<ApiResult<object>> CreateAsync(int userId) 
        => _apiService.PostAsync<object>("/api/waiters", new{userId});
    
    
}