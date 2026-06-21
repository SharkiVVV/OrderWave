using System;
using Avalonia;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Markup.Xaml;
using OrderWave.ViewModels;

namespace OrderWave.Views;

public partial class SessionView : UserControl
{
    public SessionView()
    {
        InitializeComponent();
    }

    protected override void OnLoaded(RoutedEventArgs e)
    {
        base.OnLoaded(e);
        if (DataContext is SessionViewModel vm)
        {
            vm.LoadDataCommand.Execute(null);
        }
    }
}