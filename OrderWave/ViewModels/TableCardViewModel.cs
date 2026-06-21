using System;
using System.Threading.Tasks;
using Avalonia.Media;
using CommunityToolkit.Mvvm.Input;
using OrderWave.Models.Tables;
using OrderWave.ViewModels.Base;

namespace OrderWave.ViewModels;

public partial class TableCardViewModel : ViewModelBase
{
    private readonly Func<TableCardViewModel,Task> _onSelect;
    
    public int TableId { get; set; }
    public int TableNumber { get; set; }
    public int TableCapacity { get; set; }
    public bool IsOccupied { get; set; }
    public int? SessionId { get; set; }
    public int GuestAmount { get; set; }
    public decimal TotalAmount { get; set; }
    
    public string Title => $" Table: {TableNumber}";
    public string TotalText => IsOccupied ? $"{TotalAmount:F0} rub" : "Free";
    public IBrush CardBorderBrush => IsOccupied ? Brushes.Green :  new SolidColorBrush(Color.Parse("#801818"));

    public TableCardViewModel(TableDto dto, Func<TableCardViewModel, Task> onSelect)
    {
        TableId = dto.TableId;
        TableNumber = dto.TableNumber;
        TableCapacity = dto.TableCapacity;
        IsOccupied = dto.IsOccupied;
        SessionId = dto.SessionId;
        GuestAmount = dto.GuestsAmount;
        TotalAmount = dto.TotalAmount;
        _onSelect = onSelect;
    }
    
    [RelayCommand]
    private async Task SelectAsync()
    => await _onSelect(this);
    
}