using System;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using OrderWave.Models.Common;

namespace OrderWave.Services;

public class ApiService
{
    private readonly HttpClient _httpClient;
    private const string BaseUrl = "https://localhost:5555";

    private static readonly JsonSerializerOptions JsonOptions = new()
    {
        PropertyNamingPolicy = JsonNamingPolicy.CamelCase,
        PropertyNameCaseInsensitive = true,
    };

    public ApiService()
    {
        var handler = new HttpClientHandler
        {
            ServerCertificateCustomValidationCallback = 
                HttpClientHandler.DangerousAcceptAnyServerCertificateValidator
        };

         _httpClient = new HttpClient(handler)
        {
            BaseAddress = new Uri(BaseUrl),
            Timeout = TimeSpan.FromSeconds(20)
        };
    }

    public void SetToken(string token)
    {
        _httpClient.DefaultRequestHeaders.Authorization = 
            new AuthenticationHeaderValue("Bearer", token);
    }
    
    

    public void ClearToken()
    {
        _httpClient.DefaultRequestHeaders.Authorization = null;
    }

    public async Task<ApiResult<TResponse>> GetAsync<TResponse>(string url)
    {
        try
        {
            var response = await _httpClient.GetAsync(url);
            return await ReadResponseAsync<TResponse>(response);
        }
        catch (HttpRequestException exception)
        {
            return ApiResult<TResponse>.Failure($"Cannot connection with server: {exception.Message}");
        }
        catch (TaskCanceledException)
        {
            return ApiResult<TResponse>.Failure("Server does not response timeout");
        }
    }

    public async Task<ApiResult<TResponse>> PostAsync<TResponse>(string url, object body)
    {
        try
        {
            var response = await _httpClient.PostAsync(url, BuildJsonContent(body));
            return await ReadResponseAsync<TResponse>(response);

        }
        catch (HttpRequestException exception)
        {
            return ApiResult<TResponse>.Failure($"Cannot connection with server: {exception.Message}");
        }
        
        catch (TaskCanceledException)
        {
            return ApiResult<TResponse>.Failure("Server does not response timeout");
        }
        
    }

    public async Task<ApiResult<TResponse>> PatchAsync<TResponse>(string url, object body)
    {
        try
        {
            
            var request = new HttpRequestMessage(HttpMethod.Patch, url)
            {
                Content = BuildJsonContent(body)
            };
            var response = await _httpClient.SendAsync(request);
            return await ReadResponseAsync<TResponse>(response);

        }
        catch (HttpRequestException exception)
        {
            return ApiResult<TResponse>.Failure($"Cannot connection with server: {exception.Message}");
        }
        catch (TaskCanceledException)
        {
            return ApiResult<TResponse>.Failure("Server does not response timeout");
        }
    }

    public async Task<ApiResult<bool>> DeleteAsync(string url)
    {
        try
        {
            var response = await _httpClient.DeleteAsync(url);
            if (response.IsSuccessStatusCode)
                return ApiResult<bool>.Success(true,response.StatusCode);
            var error = await BuildErrorMessageAsync(response);
            return ApiResult<bool>.Failure(error, response.StatusCode);
        }
        catch (HttpRequestException exception)
        {
            return ApiResult<bool>.Failure($"Cannot connection with server: {exception.Message}");
        }
    }

    private static StringContent BuildJsonContent(object body)
    {
        var json = JsonSerializer.Serialize(body, JsonOptions);
        return new StringContent(json, Encoding.UTF8, "application/json");
    }

    private async Task<ApiResult<TResponse>> ReadResponseAsync<TResponse>(HttpResponseMessage response)
    {
        if (response.IsSuccessStatusCode)
        {
            var json = await response.Content.ReadAsStringAsync();
            if (string.IsNullOrWhiteSpace(json))
            {
                return ApiResult<TResponse>.Success(default!, response.StatusCode);
            }

            try
            {
                var data = JsonSerializer.Deserialize<TResponse>(json, JsonOptions);
                return ApiResult<TResponse>.Success(data!, response.StatusCode);

            }
            catch (JsonException)
            {
                return ApiResult<TResponse>.Failure("Server return incorrect response");
            }
        }
        var error = await BuildErrorMessageAsync(response);
        return ApiResult<TResponse>.Failure(error, response.StatusCode);
    }

    private static async Task<string> BuildErrorMessageAsync(HttpResponseMessage response)
    {
        var body = await response.Content.ReadAsStringAsync();
        return response.StatusCode switch
        {
            HttpStatusCode.Unauthorized => "Incorrect login or password",
            HttpStatusCode.Forbidden => "You dont hava rights to perform this action ",
            HttpStatusCode.NotFound => "Object not found",
            HttpStatusCode.Conflict => "Data conflict (maybe duplicate)",
            HttpStatusCode.BadRequest => string.IsNullOrWhiteSpace(body) ? "Incorrect data in" : body,
            _ => $"Server error: {(int)response.StatusCode}"
        };
    }

}