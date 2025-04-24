using Avalonia.Controls;
using Avalonia.Markup.Xaml;

namespace OrderWave.Views;

public partial class MainView : UserControl
{
    //private ContentControl _mainContentControl;
    public MainView()
    {
        InitializeComponent();

        //_mainContentControl = this.FindControl<ContentControl>("MainContentControl");

        //NavigateToPage1();
    }
    //private void InitializeComponent()
    //{
    //    AvaloniaXamlLoader.Load(this);
    //}

    //public void NavigateToPage1()
    //{
    //    var page1 = new Page1(this);
    //    _mainContentControl.Content = page1;
    //}

    //public void NavigateToPage2()
    //{
    //    var page2 = new Page2(this);
    //    _mainContentControl.Content = page2;

    //}



    //public void NavigateToTestPage()
    //{
    //    var testPage = new TestPage();
    //    _mainContentControl.Content = testPage;
    //}

}
