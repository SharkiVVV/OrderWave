using System.Collections.Generic;
using System.Threading.Tasks;
using OrderWave.Models.Common;
using OrderWave.Models.Guests;
using OrderWave.Models.Waiters;
using OrderWave.Services;

namespace OrderWave.Repositories;

public class GuestsRepository
{
    private readonly ApiService _apiService;
    
    public GuestsRepository(ApiService apiService)
    {
        _apiService = apiService;
    }
    
    public Task<ApiResult<List<GuestDto>>> GetBySessionAsync(int sessionId) 
        => _apiService.GetAsync<List<GuestDto>>($"/api/guests/session/{sessionId}");
    
    public Task<ApiResult<object>> CreateAsync(int sessionId, CreateGuestRequest request)
        => _apiService.PostAsync<object>($"/api/guests/session/{sessionId}", request);
}