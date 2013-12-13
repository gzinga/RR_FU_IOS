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

			if (LabelPatientID != null) {
				LabelPatientID.Dispose ();
				LabelPatientID = null;
			}

			if (LabelNumGrafts != null) {
				LabelNumGrafts.Dispose ();
				LabelNumGrafts = null;
			}

			if (LabelTXRate != null) {
				LabelTXRate.Dispose ();
				LabelTXRate = null;
			}

			if (LabelDXRate != null) {
				LabelDXRate.Dispose ();
				LabelDXRate = null;
			}

			if (LabelProcedureDate != null) {
				LabelProcedureDate.Dispose ();
				LabelProcedureDate = null;
			}
		}
	}
}
