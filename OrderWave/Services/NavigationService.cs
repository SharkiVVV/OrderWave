using System;
using OrderWave.ViewModels;
using OrderWave.ViewModels.Base;
using ViewModelBase = OrderWave.ViewModels.Base.ViewModelBase;

namespace OrderWave.Services;

public class NavigationService
{
    public event Action<ViewModelBase>? CurrentViewModelChanged;

    public void NavigateTo(ViewModelBase viewModel)
    {
        CurrentViewModelChanged?.Invoke(viewModel);
    }
}