using System.Threading.Tasks;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.ComponentModel;
using OrderWave.Repositories;
using OrderWave.Services;
using OrderWave.ViewModels.Base;


namespace OrderWave.ViewModels;

public partial class LoginViewModel : ViewModelBase
{
   private readonly AuthRepository _authRepository;
   private NavigationService _navigationService;
   
   [ObservableProperty]
   private string login = string.Empty;
   [ObservableProperty]
   private string password = string.Empty;
   
   public  LoginViewModel(ApiService apiService, NavigationService navigationService)
   {
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
      
      
   }
   
   [ObservableProperty]
   private bool isPasswordVisible;

   public char? PasswordChar => isPasswordVisible ? null : '•';

   partial void OnIsPasswordVisibleChanged(bool value)
   {
      OnPropertyChanged(nameof(PasswordChar));
   }
   
}