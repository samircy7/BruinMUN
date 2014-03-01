//
//  MTViewController.h
//  PDFViewer
//
//  Created by C. A. Beninati on 5/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReaderViewController.h"
#import "CreditsViewController.h"

@interface MTViewController : UIViewController <ReaderViewControllerDelegate>
- (IBAction)didClickOpenPDF;
- (IBAction)didClickOpenPDF2;
- (IBAction)didClickOpenPDF3;
@property (strong, nonatomic) IBOutlet UIView *creditView;
- (IBAction)didClickCredits;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@end
