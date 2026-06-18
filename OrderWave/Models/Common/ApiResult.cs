using System.Net;

namespace OrderWave.Models.Common;

public class ApiResult<T>
{
    public bool IsSuccess { get; init; }
    public T Data { get; init; }
    public HttpStatusCode? StatusCode { get; init; }
    public string ErrorMessage { get; init; }

    // block body
    // public static ApiResult<T> Success(T data, HttpStatusCode? statusCode)
    // {
    //     return new () { IsSuccess = true, Data = data, StatusCode = statusCode };
    // }
    
    public static ApiResult<T> Success(T data, HttpStatusCode? statusCode)=>
         new () { IsSuccess = true, Data = data, StatusCode = statusCode };
    public static ApiResult<T> Failure(string error, HttpStatusCode? statusCode = null) =>
        new () { IsSuccess = false, ErrorMessage = error, StatusCode = statusCode };
    


}