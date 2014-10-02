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
	[Register ("EULAViewController")]
	partial class EULAViewController
	{
		[Outlet]
		MonoTouch.UIKit.UITextView textBoxEULA { get; set; }

		[Action ("AgreeAction:")]
		[GeneratedCode ("iOS Designer", "1.0")]
		partial void AgreeAction (UIButton sender);

		[Action ("NotAgreeAction:")]
		[GeneratedCode ("iOS Designer", "1.0")]
		partial void NotAgreeAction (UIButton sender);

		void ReleaseDesignerOutlets ()
		{
		}
	}
}
