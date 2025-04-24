package crc6431345fe65afe8d98;


public class AvaloniaActivity_GlobalLayoutListener
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		android.view.ViewTreeObserver.OnGlobalLayoutListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onGlobalLayout:()V:GetOnGlobalLayoutHandler:Android.Views.ViewTreeObserver/IOnGlobalLayoutListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"";
		mono.android.Runtime.register ("Avalonia.Android.AvaloniaActivity+GlobalLayoutListener, Avalonia.Android", AvaloniaActivity_GlobalLayoutListener.class, __md_methods);
	}


	public AvaloniaActivity_GlobalLayoutListener ()
	{
		super ();
		if (getClass () == AvaloniaActivity_GlobalLayoutListener.class) {
			mono.android.TypeManager.Activate ("Avalonia.Android.AvaloniaActivity+GlobalLayoutListener, Avalonia.Android", "", this, new java.lang.Object[] {  });
		}
	}

	public AvaloniaActivity_GlobalLayoutListener (crc6431345fe65afe8d98.AvaloniaView p0)
	{
		super ();
		if (getClass () == AvaloniaActivity_GlobalLayoutListener.class) {
			mono.android.TypeManager.Activate ("Avalonia.Android.AvaloniaActivity+GlobalLayoutListener, Avalonia.Android", "Avalonia.Android.AvaloniaView, Avalonia.Android", this, new java.lang.Object[] { p0 });
		}
	}


	public void onGlobalLayout ()
	{
		n_onGlobalLayout ();
	}

	private native void n_onGlobalLayout ();

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
