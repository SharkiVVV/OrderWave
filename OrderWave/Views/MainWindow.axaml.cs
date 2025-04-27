using Avalonia.Controls;
using Avalonia.Markup.Xaml;

namespace OrderWave.Views;

public partial class MainWindow : Window
{

    private ContentControl _mainContentControl;
    public MainWindow()
    {
        InitializeComponent();
        _mainContentControl = this.FindControl<ContentControl>("MainContentControl");

        NavigateToPage3();
    }


    public void NavigateToPage1()
    {
        var page1 = new Page1(this);
        _mainContentControl.Content = page1;
    }

    public void NavigateToPage2()
    {
        var page2 = new Page2(this);
        _mainContentControl.Content = page2;

    }



    //public void NavigateToTestPage()
    //{
    //    var testPage = new TestPage();
    //    _mainContentControl.Content = testPage;
    //}

    public void NavigateToPage3()
    {
        var page3 = new Page3(this);
        _mainContentControl.Content = page3;
    }
}
