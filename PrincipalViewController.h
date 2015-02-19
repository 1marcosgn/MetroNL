//
//  PrincipalViewController.h
//  Metro NL
//
//  Created by Claudia Oliva on 13/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "mapAnnotation.h"
#import "Mapann.h"

@interface PrincipalViewController : UIViewController <MKMapViewDelegate>{
    
    IBOutlet MKMapView *mapaNL;
    
    IBOutlet UIButton *buttSimbologia;
    IBOutlet UIButton *buttEstaciones;
    IBOutlet UIButton *buttUbicacion;
    IBOutlet UIButton *buttOculta;
    
    IBOutlet UIView *vistaSimbologia;
    
    
}

@property (nonatomic,retain)IBOutlet MKMapView *mapaNL;

-(IBAction)Ubicacion:(id)sender;

-(IBAction)OcultaMuestra:(id)sender;

-(IBAction)MuestraSimbologia:(id)sender;

-(IBAction)OcultaSimbolos:(id)sender;



@end
