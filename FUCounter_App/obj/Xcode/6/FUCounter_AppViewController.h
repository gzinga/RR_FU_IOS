// WARNING
// This file has been generated automatically by Xamarin Studio to
// mirror C# types. Changes in this file made by drag-connecting
// from the UI designer will be synchronized back to C#, but
// more complex manual changes may not transfer correctly.


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface FUCounter_AppViewController : UIViewController {
	UIButton *_ButtonLoad;
	UIButton *_ButtonSave;
	UITextField *_Discarded;
	UISwitch *_DiscardedSwitch;
	UISwitch *_EditSwitchButton;
	UITextField *_F1A;
	UITextField *_F1T;
	UITextField *_F2A;
	UITextField *_F2T;
	UITextField *_F3A;
	UITextField *_F3T;
	UITextField *_F4A;
	UITextField *_F4T;
	UISegmentedControl *_GroupNumber;
	UITextField *_HairCountBox;
	UIButton *_Key0;
	UIButton *_Key1;
	UIButton *_Key2;
	UIButton *_Key3;
	UIButton *_Key4;
	UIButton *_Key5;
	UIButton *_Key6;
	UIButton *_KeyEnter;
	UILabel *_LabelHairCount;
	UILabel *_LabelTerminalHairCount;
	UILabel *_LabelTxdHairCount;
	UILabel *_LabelTxdTerminalHairCount;
	UITextView *_MicroscopicNotesTextBox;
	UITextField *_PatientID;
	UITextField *_ProcedureDate;
	UITextField *_RecordBox;
	UITableView *_ResultsView;
	UIStepper *_StepRecordEdit;
	UITextField *_TechID;
	UITextField *_TerminalHairCountBox;
	UITextField *_TextBoxProtocol;
	UITextField *_TotalTerminalHairs;
	UITextField *_TotalTransectedHairs;
	UITextField *_TxdHairCountBox;
	UITextField *_TxdTerminalHairCount;
}

@property (nonatomic, retain) IBOutlet UIButton *ButtonLoad;

@property (nonatomic, retain) IBOutlet UIButton *ButtonSave;

@property (nonatomic, retain) IBOutlet UITextField *Discarded;

@property (nonatomic, retain) IBOutlet UISwitch *DiscardedSwitch;

@property (nonatomic, retain) IBOutlet UISwitch *EditSwitchButton;

@property (nonatomic, retain) IBOutlet UITextField *F1A;

@property (nonatomic, retain) IBOutlet UITextField *F1T;

@property (nonatomic, retain) IBOutlet UITextField *F2A;

@property (nonatomic, retain) IBOutlet UITextField *F2T;

@property (nonatomic, retain) IBOutlet UITextField *F3A;

@property (nonatomic, retain) IBOutlet UITextField *F3T;

@property (nonatomic, retain) IBOutlet UITextField *F4A;

@property (nonatomic, retain) IBOutlet UITextField *F4T;

@property (nonatomic, retain) IBOutlet UISegmentedControl *GroupNumber;

@property (nonatomic, retain) IBOutlet UITextField *HairCountBox;

@property (nonatomic, retain) IBOutlet UIButton *Key0;

@property (nonatomic, retain) IBOutlet UIButton *Key1;

@property (nonatomic, retain) IBOutlet UIButton *Key2;

@property (nonatomic, retain) IBOutlet UIButton *Key3;

@property (nonatomic, retain) IBOutlet UIButton *Key4;

@property (nonatomic, retain) IBOutlet UIButton *Key5;

@property (nonatomic, retain) IBOutlet UIButton *Key6;

@property (nonatomic, retain) IBOutlet UIButton *KeyEnter;

@property (nonatomic, retain) IBOutlet UILabel *LabelHairCount;

@property (nonatomic, retain) IBOutlet UILabel *LabelTerminalHairCount;

@property (nonatomic, retain) IBOutlet UILabel *LabelTxdHairCount;

@property (nonatomic, retain) IBOutlet UILabel *LabelTxdTerminalHairCount;

@property (nonatomic, retain) IBOutlet UITextView *MicroscopicNotesTextBox;

@property (nonatomic, retain) IBOutlet UITextField *PatientID;

@property (nonatomic, retain) IBOutlet UITextField *ProcedureDate;

@property (nonatomic, retain) IBOutlet UITextField *RecordBox;

@property (nonatomic, retain) IBOutlet UITableView *ResultsView;

@property (nonatomic, retain) IBOutlet UIStepper *StepRecordEdit;

@property (nonatomic, retain) IBOutlet UITextField *TechID;

@property (nonatomic, retain) IBOutlet UITextField *TerminalHairCountBox;

@property (nonatomic, retain) IBOutlet UITextField *TextBoxProtocol;

@property (nonatomic, retain) IBOutlet UITextField *TotalTerminalHairs;

@property (nonatomic, retain) IBOutlet UITextField *TotalTransectedHairs;

@property (nonatomic, retain) IBOutlet UITextField *TxdHairCountBox;

@property (nonatomic, retain) IBOutlet UITextField *TxdTerminalHairCount;

- (IBAction)KeyEnterTouch:(id)sender;

- (IBAction)Button0Click:(id)sender;

- (IBAction)Button1Click:(id)sender;

- (IBAction)Button2Click:(id)sender;

- (IBAction)Button3Click:(id)sender;

- (IBAction)Button4Click:(id)sender;

- (IBAction)Button5Click:(id)sender;

- (IBAction)Button6Click:(id)sender;

- (IBAction)SaveRecords:(id)sender;

- (IBAction)LoadRecords:(id)sender;

- (IBAction)ClearAll:(id)sender;

- (IBAction)PatientIDEditEnd:(id)sender;

- (IBAction)SaveFUFile:(id)sender;

- (IBAction)TechIDDidEnd:(id)sender;

- (IBAction)EmailFile:(id)sender;

- (IBAction)EditSwitchEvent:(id)sender;

- (IBAction)StepRecordEditClick:(id)sender;

@end
