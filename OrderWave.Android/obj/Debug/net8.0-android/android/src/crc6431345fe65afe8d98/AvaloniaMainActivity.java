package crc6431345fe65afe8d98;


public class AvaloniaMainActivity
	extends crc6431345fe65afe8d98.AvaloniaActivity
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onCreate:(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V:GetOnCreate_Landroid_os_Bundle_Landroid_os_PersistableBundle_Handler\n" +
			"";
		mono.android.Runtime.register ("Avalonia.Android.AvaloniaMainActivity, Avalonia.Android", AvaloniaMainActivity.class, __md_methods);
	}


	public AvaloniaMainActivity ()
	{
		super ();
		if (getClass () == AvaloniaMainActivity.class) {
			mono.android.TypeManager.Activate ("Avalonia.Android.AvaloniaMainActivity, Avalonia.Android", "", this, new java.lang.Object[] {  });
		}
	}


	public AvaloniaMainActivity (int p0)
	{
		super (p0);
		if (getClass () == AvaloniaMainActivity.class) {
			mono.android.TypeManager.Activate ("Avalonia.Android.AvaloniaMainActivity, Avalonia.Android", "System.Int32, System.Private.CoreLib", this, new java.lang.Object[] { p0 });
		}
	}


	public void onCreate (android.os.Bundle p0, android.os.PersistableBundle p1)
	{
		n_onCreate (p0, p1);
	}

	private native void n_onCreate (android.os.Bundle p0, android.os.PersistableBundle p1);

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
