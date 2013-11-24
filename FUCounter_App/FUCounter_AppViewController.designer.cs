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
	[Register ("FUCounter_AppViewController")]
	partial class FUCounter_AppViewController
	{
		[Outlet]
		MonoTouch.UIKit.UIButton ButtonLoad { get; set; }

		[Outlet]
		MonoTouch.UIKit.UIButton ButtonSave { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField Discarded { get; set; }

		[Outlet]
		MonoTouch.UIKit.UISwitch DiscardedSwitch { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField F1A { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField F1T { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField F2A { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField F2T { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField F3A { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField F3T { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField F4A { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField F4T { get; set; }

		[Outlet]
		MonoTouch.UIKit.UISegmentedControl GroupNumber { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField HairCountBox { get; set; }

		[Outlet]
		MonoTouch.UIKit.UIButton Key0 { get; set; }

		[Outlet]
		MonoTouch.UIKit.UIButton Key1 { get; set; }

		[Outlet]
		MonoTouch.UIKit.UIButton Key2 { get; set; }

		[Outlet]
		MonoTouch.UIKit.UIButton Key3 { get; set; }

		[Outlet]
		MonoTouch.UIKit.UIButton Key4 { get; set; }

		[Outlet]
		MonoTouch.UIKit.UIButton Key5 { get; set; }

		[Outlet]
		MonoTouch.UIKit.UIButton Key6 { get; set; }

		[Outlet]
		MonoTouch.UIKit.UIButton KeyEnter { get; set; }

		[Outlet]
		MonoTouch.UIKit.UILabel LabelHairCount { get; set; }

		[Outlet]
		MonoTouch.UIKit.UILabel LabelTerminalHairCount { get; set; }

		[Outlet]
		MonoTouch.UIKit.UILabel LabelTxdHairCount { get; set; }

		[Outlet]
		MonoTouch.UIKit.UILabel LabelTxdTerminalHairCount { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField PatientID { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField ProcedureDate { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField RecordBox { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITableView ResultsView { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField TechID { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField TerminalHairCountBox { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField TextBoxProtocol { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField TotalTerminalHairs { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField TotalTransectedHairs { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField TxdHairCountBox { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField TxdTerminalHairCount { get; set; }

		[Action ("Button0Click:")]
		partial void Button0Click (MonoTouch.Foundation.NSObject sender);

		[Action ("Button1Click:")]
		partial void Button1Click (MonoTouch.Foundation.NSObject sender);

		[Action ("Button2Click:")]
		partial void Button2Click (MonoTouch.Foundation.NSObject sender);

		[Action ("Button3Click:")]
		partial void Button3Click (MonoTouch.Foundation.NSObject sender);

		[Action ("Button4Click:")]
		partial void Button4Click (MonoTouch.Foundation.NSObject sender);

		[Action ("Button5Click:")]
		partial void Button5Click (MonoTouch.Foundation.NSObject sender);

		[Action ("Button6Click:")]
		partial void Button6Click (MonoTouch.Foundation.NSObject sender);

		[Action ("ClearAll:")]
		partial void ClearAll (MonoTouch.Foundation.NSObject sender);

		[Action ("EmailFile:")]
		partial void EmailFile (MonoTouch.Foundation.NSObject sender);

		[Action ("KeyEnterTouch:")]
		partial void KeyEnterTouch (MonoTouch.Foundation.NSObject sender);

		[Action ("LoadRecords:")]
		partial void LoadRecords (MonoTouch.Foundation.NSObject sender);

		[Action ("PatientIDEditEnd:")]
		partial void PatientIDEditEnd (MonoTouch.Foundation.NSObject sender);

		[Action ("SaveFUFile:")]
		partial void SaveFUFile (MonoTouch.Foundation.NSObject sender);

		[Action ("SaveRecords:")]
		partial void SaveRecords (MonoTouch.Foundation.NSObject sender);

		[Action ("TechIDDidEnd:")]
		partial void TechIDDidEnd (MonoTouch.Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (ButtonLoad != null) {
				ButtonLoad.Dispose ();
				ButtonLoad = null;
			}

			if (ButtonSave != null) {
				ButtonSave.Dispose ();
				ButtonSave = null;
			}

			if (Discarded != null) {
				Discarded.Dispose ();
				Discarded = null;
			}

			if (DiscardedSwitch != null) {
				DiscardedSwitch.Dispose ();
				DiscardedSwitch = null;
			}

			if (F1A != null) {
				F1A.Dispose ();
				F1A = null;
			}

			if (F1T != null) {
				F1T.Dispose ();
				F1T = null;
			}

			if (F2A != null) {
				F2A.Dispose ();
				F2A = null;
			}

			if (F2T != null) {
				F2T.Dispose ();
				F2T = null;
			}

			if (F3A != null) {
				F3A.Dispose ();
				F3A = null;
			}

			if (F3T != null) {
				F3T.Dispose ();
				F3T = null;
			}

			if (F4A != null) {
				F4A.Dispose ();
				F4A = null;
			}

			if (F4T != null) {
				F4T.Dispose ();
				F4T = null;
			}

			if (GroupNumber != null) {
				GroupNumber.Dispose ();
				GroupNumber = null;
			}

			if (HairCountBox != null) {
				HairCountBox.Dispose ();
				HairCountBox = null;
			}

			if (Key0 != null) {
				Key0.Dispose ();
				Key0 = null;
			}

			if (Key1 != null) {
				Key1.Dispose ();
				Key1 = null;
			}

			if (Key2 != null) {
				Key2.Dispose ();
				Key2 = null;
			}

			if (Key3 != null) {
				Key3.Dispose ();
				Key3 = null;
			}

			if (Key4 != null) {
				Key4.Dispose ();
				Key4 = null;
			}

			if (Key5 != null) {
				Key5.Dispose ();
				Key5 = null;
			}

			if (Key6 != null) {
				Key6.Dispose ();
				Key6 = null;
			}

			if (KeyEnter != null) {
				KeyEnter.Dispose ();
				KeyEnter = null;
			}

			if (LabelHairCount != null) {
				LabelHairCount.Dispose ();
				LabelHairCount = null;
			}

			if (LabelTerminalHairCount != null) {
				LabelTerminalHairCount.Dispose ();
				LabelTerminalHairCount = null;
			}

			if (LabelTxdHairCount != null) {
				LabelTxdHairCount.Dispose ();
				LabelTxdHairCount = null;
			}

			if (LabelTxdTerminalHairCount != null) {
				LabelTxdTerminalHairCount.Dispose ();
				LabelTxdTerminalHairCount = null;
			}

			if (PatientID != null) {
				PatientID.Dispose ();
				PatientID = null;
			}

			if (ProcedureDate != null) {
				ProcedureDate.Dispose ();
				ProcedureDate = null;
			}

			if (RecordBox != null) {
				RecordBox.Dispose ();
				RecordBox = null;
			}

			if (ResultsView != null) {
				ResultsView.Dispose ();
				ResultsView = null;
			}

			if (TechID != null) {
				TechID.Dispose ();
				TechID = null;
			}

			if (TerminalHairCountBox != null) {
				TerminalHairCountBox.Dispose ();
				TerminalHairCountBox = null;
			}

			if (TextBoxProtocol != null) {
				TextBoxProtocol.Dispose ();
				TextBoxProtocol = null;
			}

			if (TotalTerminalHairs != null) {
				TotalTerminalHairs.Dispose ();
				TotalTerminalHairs = null;
			}

			if (TotalTransectedHairs != null) {
				TotalTransectedHairs.Dispose ();
				TotalTransectedHairs = null;
			}

			if (TxdHairCountBox != null) {
				TxdHairCountBox.Dispose ();
				TxdHairCountBox = null;
			}

			if (TxdTerminalHairCount != null) {
				TxdTerminalHairCount.Dispose ();
				TxdTerminalHairCount = null;
			}
		}
	}
}
