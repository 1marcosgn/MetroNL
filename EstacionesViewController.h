//
//  EstacionesViewController.h
//  Metro NL
//
//  Created by Claudia Oliva on 14/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/Mapkit.h>
#import "mapAnnotation.h"
#import "Mapann.h"

@interface EstacionesViewController : UIViewController <MKMapViewDelegate>{
    
    IBOutlet UILabel *labelEstacion;
    
    IBOutlet MKMapView *mapaEstacion;
    
    
    IBOutlet UIImageView *NvImagen;
    IBOutlet UIButton *NvButtonOculta;
    IBOutlet UIView *NvVista;
    
}

@property (nonatomic,retain)IBOutlet MKMapView *mapaEstacion;

-(IBAction)MostrarUbicacion:(id)sender;

-(IBAction)OultaVista:(id)sender;
-(IBAction)MostrarVista:(id)sender;

@end
