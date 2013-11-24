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
	[Register ("LoadViewController")]
	partial class LoadViewController
	{
		[Outlet]
		MonoTouch.UIKit.UITableView TableListFiles { get; set; }

		[Action ("DeleteRecord:")]
		partial void DeleteRecord (MonoTouch.Foundation.NSObject sender);

		[Action ("GoHome:")]
		partial void GoHome (MonoTouch.Foundation.NSObject sender);

		[Action ("LoadSelectedRecord:")]
		partial void LoadSelectedRecord (MonoTouch.Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (TableListFiles != null) {
				TableListFiles.Dispose ();
				TableListFiles = null;
			}
		}
	}
}
