using System;
using System.Threading.Tasks;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using OrderWave.Repositories;
using OrderWave.Services;
using OrderWave.ViewModels.Base;


namespace OrderWave.ViewModels;

public partial class LoginViewModel : ViewModelBase
{
   private readonly ApiService _apiService;
   private readonly AuthRepository _authRepository;
   private NavigationService _navigationService;
   
   [ObservableProperty]
   private string login = string.Empty;
   [ObservableProperty]
   private string password = string.Empty;
   
   public  LoginViewModel(ApiService apiService, NavigationService navigationService)
   {
      _apiService = apiService;
      _authRepository = new AuthRepository(apiService);
      _navigationService = navigationService;
   }

   [RelayCommand]
   private async Task LoginAsync()
   {
      ClearError();

      if (string.IsNullOrEmpty(Login) || string.IsNullOrEmpty(Password))
      {
         ErrorMessage = "Please enter a valid login and password";
         return;
      }
      
      IsBusy = true;
      var result = await _authRepository.LoginAsync(Login, Password);
      IsBusy = false;

      if (!result.IsSuccess || result.Data is null)
      {
         ErrorMessage = result.ErrorMessage ?? "Login failed";
         return;
      }
      
      AppSession.Token = result.Data.Token;
      AppSession.Role = result.Data.Role;
      AppSession.UserId = result.Data.UserId;

      var waitersRepo = new WaitersRepository(_apiService);
      var meResult = await waitersRepo.GetMeAsync();
      
      if (meResult.IsSuccess && meResult.Data is not null)
      {
         AppSession.WaiterId = meResult.Data.WaiterId;
         AppSession.ShiftId = meResult.Data.ShiftId;
      }
      else
      {
         IsBusy = false;
         ErrorMessage = "Login failed. Contact administrator";
         return;
      }
      
      IsBusy = false;
      

      // if (result.Data.Role == "Waiter")
      // {
      //    var waiterRepos = new WaitersRepository(_apiService);
      //    var meRasult = await waiterRepos.GetMeAsync();
      //    if (meRasult.IsSuccess && meRasult.Data is not null)
      //    {
      //       AppSession.WaiterId = meRasult.Data.WaiterId;
      //       AppSession.ShiftId = meRasult.Data.ShiftId;
      //    }
      // }
      
      _navigationService.NavigateTo(new TablesViewModel(_apiService, _navigationService));
      
      
   }
   
   [ObservableProperty]
   private bool isPasswordVisible;

   public char? PasswordChar => isPasswordVisible ? null : '•';

   partial void OnIsPasswordVisibleChanged(bool value)
   {
      OnPropertyChanged(nameof(PasswordChar));
   }
   
}