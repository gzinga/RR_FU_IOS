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
	[Register ("EditViewController")]
	partial class EditViewController
	{
		[Outlet]
		MonoTouch.UIKit.UISegmentedControl selectorGroupNumber { get; set; }

		[Outlet]
		MonoTouch.UIKit.UIStepper StepRecordControl { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField textboxHairCount { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField textboxRecordNum { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField textboxTerminalHairCount { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField textBoxTxDHairCount { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField textboxTxdTerminalHairCount { get; set; }

		[Action ("StepRecordEvent:")]
		partial void StepRecordEvent (MonoTouch.Foundation.NSObject sender);

		[Action ("TextBoxOkay:")]
		partial void TextBoxOkay (MonoTouch.Foundation.NSObject sender);

		[Action ("UndoLast:")]
		partial void UndoLast (MonoTouch.Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (selectorGroupNumber != null) {
				selectorGroupNumber.Dispose ();
				selectorGroupNumber = null;
			}

			if (StepRecordControl != null) {
				StepRecordControl.Dispose ();
				StepRecordControl = null;
			}

			if (textboxHairCount != null) {
				textboxHairCount.Dispose ();
				textboxHairCount = null;
			}

			if (textboxRecordNum != null) {
				textboxRecordNum.Dispose ();
				textboxRecordNum = null;
			}

			if (textboxTerminalHairCount != null) {
				textboxTerminalHairCount.Dispose ();
				textboxTerminalHairCount = null;
			}

			if (textBoxTxDHairCount != null) {
				textBoxTxDHairCount.Dispose ();
				textBoxTxDHairCount = null;
			}

			if (textboxTxdTerminalHairCount != null) {
				textboxTxdTerminalHairCount.Dispose ();
				textboxTxdTerminalHairCount = null;
			}
		}
	}
}
