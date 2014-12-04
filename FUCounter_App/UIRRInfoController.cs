using System;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using System.CodeDom.Compiler;
using System.Drawing;

namespace FUCounter_App
{
	partial class UIRRInfoController : UIViewController
	{
		public UIWebView UIWebcontrollerObj = null;

		public UIRRInfoController (IntPtr handle) : base (handle)
		{
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			//View.Bounds = new RectangleF (0, 0, 1000, 1000);
		}

		public override void ViewDidAppear (bool animated)
		{
			base.ViewDidAppear(animated);


			try{
				if (UIWebcontrollerObj == null)
						UIWebcontrollerObj = new UIWebView (new RectangleF (new PointF (0, 50), new SizeF (780, 550)));
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
			
		partial void BackClick (UIButton sender)
		{
			DismissViewController(true,null);
		}
	}
}
