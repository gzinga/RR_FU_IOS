// WARNING
//
// This file has been generated automatically by Xamarin Studio to store outlets and
// actions made in the UI designer. If it is removed, they will be lost.
// Manual changes to this file may not be handled correctly.
//
using MonoTouch.Foundation;
using System.CodeDom.Compiler;

namespace FUCounter_App
{
	[Register ("InfoViewController")]
	partial class InfoViewController
	{
		[Outlet]
		MonoTouch.UIKit.UIWebView UIWebcontroller { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (UIWebcontroller != null) {
				UIWebcontroller.Dispose ();
				UIWebcontroller = null;
			}
		}
	}
}
