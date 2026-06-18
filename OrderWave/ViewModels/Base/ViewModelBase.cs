using CommunityToolkit.Mvvm.ComponentModel;

namespace OrderWave.ViewModels.Base;

public abstract partial class ViewModelBase : ObservableObject
{
    [ObservableProperty]
    private bool isBusy;
    
    [ObservableProperty]
    private string? errorMessage;
    
    protected void ClearError()
    => errorMessage = null;
}


