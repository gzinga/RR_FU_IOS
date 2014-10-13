// This file has been autogenerated from a class added in the UI designer.

using System;

using MonoTouch.Foundation;
using MonoTouch.UIKit;
using System.Drawing;

namespace FUCounter_App
{
	public partial class InfoViewController : UIViewController
	{
		public UIWebView UIWebcontrollerObj = null;
		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			//View.Bounds = new RectangleF (0, 0, 1000, 1000);
			UIWebcontrollerObj.Reload ();
		}


		public InfoViewController (IntPtr handle) : base (handle)
		{
			try{
			if (UIWebcontrollerObj == null)
					UIWebcontrollerObj = new UIWebView (new RectangleF (new PointF (0, 0), new SizeF (550, 460)));
			String url = "http://www.restorationrobotics.com";
			UIWebcontrollerObj.ScalesPageToFit = true;
			UIWebcontrollerObj.ContentMode = UIViewContentMode.ScaleToFill;
			View.AddSubview(UIWebcontrollerObj);
			UIWebcontrollerObj.LoadRequest (new NSUrlRequest (new NSUrl (url)));
			UIWebcontrollerObj.Reload ();

			}
			catch(Exception e) {
				UIAlertView alert = new UIAlertView ("Load Page", "Failed Loading Restoration Robotics Web Site", null, "OK", null);
				alert.Show();
				return;
			}
		}

	}
}
