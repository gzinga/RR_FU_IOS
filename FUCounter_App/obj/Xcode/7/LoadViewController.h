// WARNING
// This file has been generated automatically by Xamarin Studio to
// mirror C# types. Changes in this file made by drag-connecting
// from the UI designer will be synchronized back to C#, but
// more complex manual changes may not transfer correctly.


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface LoadViewController : UIViewController {
	UITableView *_TableListFiles;
}

@property (nonatomic, retain) IBOutlet UITableView *TableListFiles;

- (IBAction)LoadSelectedRecord:(id)sender;

- (IBAction)GoHome:(id)sender;

- (IBAction)DeleteRecord:(id)sender;

@end
