// WARNING
// This file has been generated automatically by Xamarin Studio to
// mirror C# types. Changes in this file made by drag-connecting
// from the UI designer will be synchronized back to C#, but
// more complex manual changes may not transfer correctly.


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface EditViewController : UIViewController {
	UISegmentedControl *_selectorGroupNumber;
	UITextField *_textboxHairCount;
	UITextField *_textboxRecordNum;
	UITextField *_textboxTerminalHairCount;
	UITextField *_textBoxTxDHairCount;
	UITextField *_textboxTxdTerminalHairCount;
}

@property (nonatomic, retain) IBOutlet UISegmentedControl *selectorGroupNumber;

@property (nonatomic, retain) IBOutlet UITextField *textboxHairCount;

@property (nonatomic, retain) IBOutlet UITextField *textboxRecordNum;

@property (nonatomic, retain) IBOutlet UITextField *textboxTerminalHairCount;

@property (nonatomic, retain) IBOutlet UITextField *textBoxTxDHairCount;

@property (nonatomic, retain) IBOutlet UITextField *textboxTxdTerminalHairCount;

- (IBAction)UndoLast:(id)sender;

@end
