using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using OrderWave.Models.Tables;
using OrderWave.Repositories;
using OrderWave.Services;
using OrderWave.ViewModels.Base;

namespace OrderWave.ViewModels;

public partial class TablesViewModel : ViewModelBase
{
    private readonly ApiService _apiService;
    private readonly TablesRepository _tablesRepository;
    private NavigationService _navigationService;
    private GuestsRepository _guestsRepository;

    [ObservableProperty] 
    private ObservableCollection<TableCardViewModel> tables = new();
    
    // [ObservableProperty]
    // private bool IsAddTablePanelVisible;
    
    [ObservableProperty]
    private string newTableNumber;
    [ObservableProperty]
    private string newTableCapcity;
    
    public bool IsAdmin => AppSession.IsAdmin;

    public TablesViewModel(ApiService apiService, NavigationService navigationService)
    {
        _apiService = apiService;
        _navigationService = navigationService;
        _tablesRepository = new TablesRepository(apiService);
        _guestsRepository = new  GuestsRepository(apiService);
    }

    [RelayCommand]
    private async Task LoadTablesAsync()
    {
        IsBusy = true;
        ClearError();
        var result = await _tablesRepository.GetAllTablesAsync();
        IsBusy = false;

        if (!result.IsSuccess || result.Data is null)
        {
            ErrorMessage = result.ErrorMessage ?? "Can't load tables";
            return;
        }

        var occupiedDtos = result.Data.Where(d => d.IsOccupied && d.SessionId.HasValue)
            .ToList();
        var guestCountTasks = occupiedDtos.Select(d=> 
            _guestsRepository.GetBySessionAsync(d.SessionId!.Value)).ToList();
        
        var guestCountResults = await Task.WhenAll(guestCountTasks);

        for (int i = 0; i < occupiedDtos.Count; i++)
        {
            var guestResult = guestCountResults[i];
            if (guestResult.IsSuccess && guestResult.Data is not null)
            {
                occupiedDtos[i].GuestsAmount = guestResult.Data.Count;
            }
        }
        
        Tables.Clear();
        foreach (var dto in result.Data)
        {
            Tables.Add(new TableCardViewModel(dto,OnTableSelectAsync));
        }
    }

    private async Task OnTableSelectAsync(TableCardViewModel tablecard)
    {
        ClearError();
        if (tablecard.SessionId.HasValue)
        { 
            _navigationService.NavigateTo(new SessionViewModel(
                tablecard.TableId,tablecard.TableNumber,tablecard.SessionId.Value,
                _apiService, _navigationService));
            return;
        }
        
        IsBusy = true;
        var result = await _tablesRepository.OpenSessionAsync(tablecard.TableId, new OpenSessionRequest
        {
            GuestAmount = 1,
            WaiterId = AppSession.WaiterId
        });
        IsBusy = false;

        if (!result.IsSuccess || result.Data is null)
        {
            ErrorMessage = result.ErrorMessage ;
            return;
        }
        _navigationService.NavigateTo(new SessionViewModel(
            tablecard.TableId,tablecard.TableNumber,result.Data.SessionId,
            _apiService, _navigationService));

    }
    
    [RelayCommand]
    private void ShowAddTablePanel()
    {
        NewTableNumber = string.Empty;
        NewTableCapcity = string.Empty;
        ClearError();
        // IsAddTablePanelVisible = true;
    }
    // [RelayCommand]
    // private void CancelAddTablePanel() => IsAddTablePanelVisible = false;
    [RelayCommand]
    private async Task ConfirmAddTableAsync()
    {
        ClearError();
        if (!int.TryParse(NewTableNumber, out var number) || number <1)
        {
            ErrorMessage = "Please enter a correct number";
                return;
        }
        
        if (!int.TryParse(NewTableCapcity, out var capacity) || capacity <1)
        {
            ErrorMessage = "Please enter a correct capacity";
            return;
        }
        
        IsBusy = true;
        var result = await _tablesRepository.CreateTableAsync(new CreateTableRequest
        {
            TableNumber = number,
            TableCapacity = capacity
        });
        
        IsBusy = false;

        if (!result.IsSuccess)
        {
            ErrorMessage = result.ErrorMessage ?? "Can't create table";
            return;
        }
        
        // IsAddTablePanelVisible = false;
        await LoadTablesAsync();
    }
}