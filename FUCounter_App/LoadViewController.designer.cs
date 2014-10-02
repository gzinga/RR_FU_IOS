// WARNING
//
// This file has been generated automatically by Xamarin Studio from the outlets and
// actions declared in your storyboard file.
// Manual changes to this file will not be maintained.
//
using System;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using System.CodeDom.Compiler;

namespace FUCounter_App
{
	[Register ("LoadViewController")]
	partial class LoadViewController
	{
		[Outlet]
		MonoTouch.UIKit.UILabel LabelDXRate { get; set; }

		[Outlet]
		MonoTouch.UIKit.UILabel LabelNumGrafts { get; set; }

		[Outlet]
		MonoTouch.UIKit.UILabel LabelPatientID { get; set; }

		[Outlet]
		MonoTouch.UIKit.UILabel LabelProcedureDate { get; set; }

		[Outlet]
		MonoTouch.UIKit.UILabel LabelTXRate { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITableView TableListFiles { get; set; }

		[Action ("DeleteRecord:")]
		[GeneratedCode ("iOS Designer", "1.0")]
		partial void DeleteRecord (UIButton sender);

		[Action ("GoHome:")]
		[GeneratedCode ("iOS Designer", "1.0")]
		partial void GoHome (UIButton sender);

		[Action ("LoadSelectedRecord:")]
		[GeneratedCode ("iOS Designer", "1.0")]
		partial void LoadSelectedRecord (UIButton sender);

		void ReleaseDesignerOutlets ()
		{
		}
	}
}
