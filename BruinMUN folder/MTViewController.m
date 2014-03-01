//
//  MTViewController.m
//  PDFViewer
//
//  Created by C. A. Beninati on 5/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MTViewController.h"

@interface MTViewController ()

@end

@implementation MTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}

- (IBAction)didClickOpenPDF{
  
    NSData *pdfData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://meetbhagdev.bol.ucla.edu/Article1.pdf"]];
    
    if (!pdfData)
        self.infoLabel.text = @"This issue is currently unavailable";
    //Store the Data locally as PDF File
    else{
        self.infoLabel.text = @"";
    NSString *resourceDocPath = [[NSString alloc] initWithString:[[[[NSBundle mainBundle]  resourcePath] stringByDeletingLastPathComponent] stringByAppendingPathComponent:@"Documents"]];
    
    NSString *filePath = [resourceDocPath stringByAppendingPathComponent:@"article1.pdf"];
    
    [pdfData writeToFile:filePath atomically:YES];
    
    ReaderDocument *document = [ReaderDocument withDocumentFilePath:filePath password:nil];
    
    if (document != nil)
	{
		ReaderViewController *readerViewController = [[ReaderViewController alloc] initWithReaderDocument:document];
		readerViewController.delegate = self;
        
		readerViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
		readerViewController.modalPresentationStyle = UIModalPresentationFullScreen;
        
        [self presentModalViewController:readerViewController animated:YES];
    }}
}

- (IBAction)didClickOpenPDF2{
    NSData *pdfData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://meetbhagdev.bol.ucla.edu/Article2.pdf"]];
    
    //Store the Data locally as PDF File
    if (!pdfData)
        self.infoLabel.text = @"This issue is currently unavailable";
    
    else{
        self.infoLabel.text = @"";
    NSString *resourceDocPath = [[NSString alloc] initWithString:[[[[NSBundle mainBundle]  resourcePath] stringByDeletingLastPathComponent] stringByAppendingPathComponent:@"Documents"]];
    
    NSString *filePath = [resourceDocPath stringByAppendingPathComponent:@"article2.pdf"];
    
    [pdfData writeToFile:filePath atomically:YES];
    
    ReaderDocument *document = [ReaderDocument withDocumentFilePath:filePath password:nil];
    
    if (document != nil)
	{
		ReaderViewController *readerViewController = [[ReaderViewController alloc] initWithReaderDocument:document];
		readerViewController.delegate = self;
        
		readerViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
		readerViewController.modalPresentationStyle = UIModalPresentationFullScreen;
        
        [self presentModalViewController:readerViewController animated:YES];
    }}
}

- (IBAction)didClickOpenPDF3{

    NSData *pdfData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://meetbhagdev.bol.ucla.edu/Article3.pdf"]];
    
    if (!pdfData)
        self.infoLabel.text = @"This issue is currently unavailable";
    
    
    //Store the Data locally as PDF File
    else{
        self.infoLabel.text = @"";
    NSString *resourceDocPath = [[NSString alloc] initWithString:[[[[NSBundle mainBundle]  resourcePath] stringByDeletingLastPathComponent] stringByAppendingPathComponent:@"Documents"]];

    NSString *filePath = [resourceDocPath stringByAppendingPathComponent:@"article3.pdf"];
    
    [pdfData writeToFile:filePath atomically:YES];
    
    ReaderDocument *document = [ReaderDocument withDocumentFilePath:filePath password:nil];
    
    if (document != nil)
	{
		ReaderViewController *readerViewController = [[ReaderViewController alloc] initWithReaderDocument:document];
		readerViewController.delegate = self;
        
		readerViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
		readerViewController.modalPresentationStyle = UIModalPresentationFullScreen;
        
        [self presentModalViewController:readerViewController animated:YES];
    }}
}

- (void)dismissReaderViewController:(ReaderViewController *)viewController {
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)didClickCredits {
    self.infoLabel.text = @"";
    CreditsViewController *cvc = [[CreditsViewController alloc] init];
    [self presentModalViewController:cvc animated:YES];
}

- (void) setStatusLabel:(NSString *)text
{
    _infoLabel.text = text;
}

@end
