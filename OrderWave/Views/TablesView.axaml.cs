using System;
using Avalonia;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Markup.Xaml;
using OrderWave.ViewModels;

namespace OrderWave.Views;

public partial class TablesView : UserControl
{
    public TablesView()
    {
        InitializeComponent();
    }

    protected override void OnLoaded(RoutedEventArgs e)
    {
        base.OnLoaded(e);
        if (DataContext is TablesViewModel vm)
        {
            vm.LoadTablesCommand.Execute(null);
        }
    }
}