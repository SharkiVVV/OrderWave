using System.Collections.Generic;
using System.Threading.Tasks;
using OrderWave.Models.Common;
using OrderWave.Models.Tables;
using OrderWave.Services;

namespace OrderWave.Repositories;

public class TablesRepository
{
    private readonly ApiService _apiService;
    
    public TablesRepository(ApiService apiService)
    {
        _apiService = apiService;
    }
    
    public Task<ApiResult<List<TableDto>>> GetAllTablesAsync()
        => _apiService.GetAsync<List<TableDto>>("/api/tables");
    
    public Task<ApiResult<OpenSessionResponse>> OpenSessionAsync(int tableId, OpenSessionRequest request)
        => _apiService.PostAsync<OpenSessionResponse>($"/api/tables/{tableId}/session", request);
    public Task<ApiResult<object>> CloseSession(int sessionId)
        => _apiService.PatchAsync<object>($"/api/tables/session/{sessionId}/close", new{});
    
    public Task<ApiResult<object>> CreateTableAsync(CreateTableRequest request)
        => _apiService.PostAsync<object>($"/api/tables", request);
    
    
}