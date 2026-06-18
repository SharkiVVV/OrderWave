using System;
using Avalonia.Controls;
using Avalonia.Controls.Templates;
using OrderWave.ViewModels.Base;

namespace OrderWave;

public class ViewLocator : IDataTemplate
{
    public Control? Build(object? data)
    {
        if (data is null)
        {
            return null;
        }

        var name = data.GetType().FullName!
            .Replace("ViewModels", "Views")
            .Replace("ViewModel", "View");

        var type = Type.GetType(name);

        if (type is not null)
        {
            return (Control)Activator.CreateInstance(type)!;
            
        }
        
        return new TextBlock { Text = "Not found View for " + name };
    }
    
    public bool Match(object? data) => data is ViewModelBase;

}