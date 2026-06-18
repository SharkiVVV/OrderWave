using CommunityToolkit.Mvvm.ComponentModel;
using OrderWave.Services;
using OrderWave.ViewModels.Base;

namespace OrderWave.ViewModels;

public partial class MainViewModel : ObservableObject
{
    [ObservableProperty] 
    private ViewModelBase currentPage;

    public MainViewModel(ApiService apiService, NavigationService navigationService)
    {
        navigationService.CurrentViewModelChanged += vm => CurrentPage = vm;
        
        CurrentPage = new LoginViewModel(apiService, navigationService);
    }
}
