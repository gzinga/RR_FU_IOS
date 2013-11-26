// WARNING
// This file has been generated automatically by Xamarin Studio to
// mirror C# types. Changes in this file made by drag-connecting
// from the UI designer will be synchronized back to C#, but
// more complex manual changes may not transfer correctly.


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface EditViewController : UIViewController {
}
@property (retain, nonatomic) IBOutlet UITextField *textboxHairCount;
@property (retain, nonatomic) IBOutlet UITextField *textBoxTxDHairCount;
@property (retain, nonatomic) IBOutlet UITextField *textboxTerminalHairCount;
@property (retain, nonatomic) IBOutlet UITextField *textboxTxdTerminalHairCount;
@property (retain, nonatomic) IBOutlet UITextField *textboxRecordNum;
@property (retain, nonatomic) IBOutlet UISegmentedControl *selectorGroupNumber;
- (IBAction)UndoLast:(id)sender;

@property (retain, nonatomic) IBOutlet UIButton *okayEvent;
@end
