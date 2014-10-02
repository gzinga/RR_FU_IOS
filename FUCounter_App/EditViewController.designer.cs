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

		[Action ("StepRecord:")]
		[GeneratedCode ("iOS Designer", "1.0")]
		partial void StepRecord (UIStepper sender);

		[Action ("StepRecordEvent:")]
		[GeneratedCode ("iOS Designer", "1.0")]
		partial void StepRecordEvent (UIStepper sender);

		[Action ("TextBoxOkay:")]
		[GeneratedCode ("iOS Designer", "1.0")]
		partial void TextBoxOkay (UIButton sender);

		[Action ("UndoLast:")]
		[GeneratedCode ("iOS Designer", "1.0")]
		partial void UndoLast (UIButton sender);

		void ReleaseDesignerOutlets ()
		{
		}
	}
}
