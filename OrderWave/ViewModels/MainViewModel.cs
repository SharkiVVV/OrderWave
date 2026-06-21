using System.Security.Cryptography.X509Certificates;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using OrderWave.Services;
using OrderWave.ViewModels.Base;

namespace OrderWave.ViewModels;

public partial class MainViewModel : ObservableObject
{
    private readonly ApiService _apiService;
    private readonly NavigationService _navigationService;
    
    [ObservableProperty] 
    private ViewModelBase currentPage= null!;

    [ObservableProperty] 
    private bool isNavVisible;

    public bool IsAdmin => AppSession.IsAdmin;
    
    public MainViewModel(ApiService apiService, NavigationService navigationService)
    {
        _apiService = apiService;
        _navigationService = navigationService;
        navigationService.CurrentViewModelChanged += vm =>
        {
            CurrentPage = vm;
            IsNavVisible = vm is not LoginViewModel;
        };
        
        CurrentPage = new LoginViewModel(apiService, navigationService);
        
       
    }
    [RelayCommand]
    public void NavigateToTables()
        => _navigationService.NavigateTo(new TablesViewModel(_apiService, _navigationService));
    
    // [RelayCommand]
    // public void NavigateToSession()
    //     => _navigationService.NavigateTo(new SessionViewModel());
}
