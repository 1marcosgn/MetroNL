//
//  ContactoViewController.h
//  Metro NL
//
//  Created by Claudia Oliva on 15/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AddressBook/AddressBook.h>
#import <MessageUI/MessageUi.h>

@interface ContactoViewController : UIViewController <MFMailComposeViewControllerDelegate>


-(IBAction)AgregarContacto:(id)sender;

-(IBAction)EnviarCorreo:(id)sender;

@end
