//
//  ContactoViewController.m
//  Metro NL
//
//  Created by Claudia Oliva on 15/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "ContactoViewController.h"

@interface ContactoViewController ()

@end

@implementation ContactoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)AgregarContacto:(id)sender{
    
    [self saveAgenda];
    
}


-(void)saveAgenda{
    
    //Variable para captar posibles errores
    CFErrorRef error = NULL;
    
    
    //Creamos una referencia a nuestro AddressBook
    ABAddressBookRef iPhoneAddressBook = ABAddressBookCreate();
    
    //Creamos una nueva Persona
    ABRecordRef newPerson = ABPersonCreate();
    
    //Comenzamos agregando algunos datos..
    ABRecordSetValue(newPerson, kABPersonFirstNameProperty, @"STC", &error);
    ABRecordSetValue(newPerson, kABPersonLastNameProperty, @"Metrorrey", &error);
    
    ABRecordSetValue(newPerson, kABPersonOrganizationProperty, @"Mario Guerrero Dávila", &error);
    ABRecordSetValue(newPerson, kABPersonJobTitleProperty, @"Monterrey NL", &error);
    
    //Agregando un telefono..
    ABMutableMultiValueRef multiPhone = ABMultiValueCreateMutable(kABMultiStringPropertyType);
    ABMultiValueAddValueAndLabel(multiPhone, @"8374-0199", kABPersonPhoneMainLabel, NULL);
    ABMultiValueAddValueAndLabel(multiPhone, @"8375-4372", kABPersonPhoneMobileLabel, NULL);
    ABMultiValueAddValueAndLabel(multiPhone, @"8375-4372", kABOtherLabel, NULL);
    ABRecordSetValue(newPerson, kABPersonPhoneProperty, multiPhone, nil);
    CFRelease(multiPhone);
    
    //Agregando una direccion de correo electronico
    ABMutableMultiValueRef multiEmail = ABMultiValueCreateMutable(kABMultiStringPropertyType);
    ABMultiValueAddValueAndLabel(multiEmail, @"mario.guerrero@nuevoleon.gob.mx", kABWorkLabel, NULL);
    ABRecordSetValue(newPerson, kABPersonEmailProperty, multiEmail, &error);
    
    
    //Guardado la Informacion
    ABAddressBookAddRecord(iPhoneAddressBook, newPerson, &error);
    ABAddressBookSave(iPhoneAddressBook, &error);
    
    if (error != NULL) {
        
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Metro NL" message:@"Esta Persona ya esta en su lista de Contactos" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alert show];
        
    }
    else {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Metro NL" message:@"Se Agrego correctamente a la Lista de Contactos" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alert show];
    }
    
}

-(IBAction)EnviarCorreo:(id)sender{
    
    [self mailIt];
}

-(void)mailIt{MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    
    picker.mailComposeDelegate = self;
    [picker setSubject:@"Metro NL"];
    
    NSArray *aReceptores=[NSArray arrayWithObjects:@"marcos.garcia@fipade.com", nil];
    [picker setToRecipients:aReceptores];
    
    
    
    
    NSString *msj = [NSString stringWithFormat:@""];
    
    NSString *emailBody = msj;
    [picker setMessageBody:emailBody isHTML:YES];
    
    [self presentModalViewController:picker animated:YES];
}


-(void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    
    [self dismissModalViewControllerAnimated:YES];
}



@end
