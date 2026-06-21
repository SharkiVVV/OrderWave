using System.Collections.ObjectModel;
using System.Threading.Tasks;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using OrderWave.Models.Tables;
using OrderWave.Models.Guests;
using OrderWave.Repositories;
using OrderWave.Services;
using OrderWave.ViewModels.Base;


namespace OrderWave.ViewModels;

public partial class SessionViewModel : ViewModelBase
{
    private readonly int _tableId;
    private readonly int _sessionId;
    private readonly ApiService _apiService;
    private readonly NavigationService _navigationService;
    private readonly TablesRepository _tablesRepository;
    private readonly GuestsRepository _guestsRepository;
    
    public int TableNumber { get; }
    [ObservableProperty]
    private ObservableCollection<GuestDto> guests = new();
    [ObservableProperty]
    private bool isAddGuestsVisible;
    [ObservableProperty]
    private string newGuestName = string.Empty;
    [ObservableProperty]
    private string newGuestSurname = string.Empty;

    public SessionViewModel(int tableId, int tableNumber, int sessionId,
        ApiService apiService, NavigationService navigationService)
    {
        _tableId = tableId;
        TableNumber = tableNumber;
        _sessionId = sessionId;
        _apiService = apiService;
        _navigationService = navigationService;
        _tablesRepository = new TablesRepository(apiService);
        _guestsRepository = new GuestsRepository(apiService);
    }

    [RelayCommand]
    private async Task LoadDataAsync()
    {
        
        IsBusy = true;
        var result = await _guestsRepository.GetBySessionAsync(_sessionId);
        IsBusy = false;
        if (result.IsSuccess && result.Data is not null)
        {
            Guests.Clear();
            foreach (var guest in result.Data)
            {
                Guests.Add(guest);
            }
        }

        else
        {
            ErrorMessage = result.ErrorMessage;
        }
    }

    // [RelayCommand]
    // private async Task OpenSessionAsync()
    // {
    //     ClearError();
    //     if (!int.TryParse(OpenGuestCount, out int count) || count < 1)
    //     {
    //         ErrorMessage = "Enter the guest count";
    //     }
    //     
    //     int waiterId;
    //     if (AppSession.IsAdmin)
    //     {
    //         if (!int.TryParse(OpenWaiterId, out waiterId) || waiterId < 1)
    //         {
    //             ErrorMessage = "Enter the waiter id";
    //             return;
    //         }
    //     }
    //     else
    //     {
    //         waiterId = AppSession.WaiterId;
    //     }
    //     IsBusy = true;
    //     var result = await _tablesRepository.OpenSessionAsync(_tableId, new OpenSessionRequest
    //     {
    //         GuestAmount = count,
    //         WaiterId = waiterId
    //     });
    //     IsBusy = false;
    //
    //     if (!result.IsSuccess || result.Data is null)
    //     {
    //         ErrorMessage = result.ErrorMessage;
    //         return;
    //     }
    //     
    //     _navigationService.NavigateTo(new SessionViewModel(_tableId, TableNumber, result.Data.SessionId, _apiService, _navigationService));
    //     
    // }
    
    [RelayCommand]
    private void ShowAddGuests()
    {
        NewGuestName = string.Empty;
        NewGuestSurname = string.Empty;
        ClearError();
        IsAddGuestsVisible = true;
    }
    [RelayCommand]
    private void CancelAddGuests() => IsAddGuestsVisible = false;

    [RelayCommand]
    private async Task ConfirmAddGuestsAsync()
    {
        ClearError();
        if (string.IsNullOrWhiteSpace(NewGuestName))
        {
            ErrorMessage = "Enter a guest name";
            return;
        }
        IsBusy = true;
        var result = await _guestsRepository.CreateAsync(_sessionId, new CreateGuestRequest
        {
            GuestName = NewGuestName,
            GuestSurname = string.IsNullOrWhiteSpace(NewGuestSurname) ? null : NewGuestSurname

        });
        IsBusy = false;
        if (!result.IsSuccess)
        {
            ErrorMessage = result.ErrorMessage;
            return;
        }
        
        IsAddGuestsVisible = false;
        await LoadDataAsync();
    }

    [RelayCommand]
    private async Task GoBack()
    {
        if (Guests.Count == 0)
        {
            ClearError();
            IsBusy = true;
            var result = await _tablesRepository.CloseSession(_sessionId);
            IsBusy = false;
            if (!result.IsSuccess)
            {
                ErrorMessage = result.ErrorMessage;
                return;
            }
        }
        _navigationService.NavigateTo(new TablesViewModel(_apiService,_navigationService));
    }
    
    [RelayCommand]
    private async Task CloseTableAsync()
    {
        ClearError();
        IsBusy = true;
        var result = await _tablesRepository.CloseSession(_sessionId);
        IsBusy = false;
        if (!result.IsSuccess)
        { 
            ErrorMessage = result.ErrorMessage;
            return;
        }
        _navigationService.NavigateTo(new TablesViewModel(_apiService,_navigationService));
    }
}