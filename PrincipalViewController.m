//
//  PrincipalViewController.m
//  Metro NL
//
//  Created by Claudia Oliva on 13/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "PrincipalViewController.h"
#import "mapAnnotation.h"

@interface PrincipalViewController ()

@end

@implementation PrincipalViewController

@synthesize mapaNL;

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
    
    //Linea 01..
    [self UbicarAnnotation:25.679629 longitud:-100.245738 titulo:@"Exposición"];
    
    [self UbicarAnnotation:25.679822 longitud:-100.252347 titulo:@"Lerdo de Tejada"];
    
    [self UbicarAnnotation:25.680054 longitud:-100.264235 titulo:@"Eloy Cavazos"];
    
    [self UbicarAnnotation:25.683129 longitud:-100.279427 titulo:@"Y Griega"];
    
    [self UbicarAnnotation:25.683729 longitud:-100.288246 titulo:@"Parque Fundidora"];
    
    
    [self UbicarAnnotation:25.684057 longitud:-100.296915 titulo:@"Félix U. Gómez"];
    
    [self UbicarAnnotation:25.685102 longitud:-100.306613 titulo:@"Del Golfo"];
    
    [self UbicarAnnotation:25.686359 longitud:-100.316741 titulo:@"Cuauhtémoc"];
	
    [self UbicarAnnotation:25.687209 longitud:-100.324402 titulo:@"Central"];
    
    [self UbicarAnnotation:25.686861 longitud:-100.333972 titulo:@"Edison"];
    
    
    [self UbicarAnnotation:25.692121 longitud:-100.344143 titulo:@"Hospital"];
    
    [self UbicarAnnotation:25.699352 longitud:-100.343714 titulo:@"Simón Bolivar"];
    
    [self UbicarAnnotation:25.705907 longitud:-100.342619 titulo:@"Mitras"];
    
    [self UbicarAnnotation:25.715941 longitud:-100.342534 titulo:@"Alfonso Reyes"];
    
    [self UbicarAnnotation:25.72348 longitud:-100.342813 titulo:@"Penitenciaria"];
    
    
    [self UbicarAnnotation:25.732372 longitud:-100.347319 titulo:@"Aztlán"];
    
    [self UbicarAnnotation:25.742597 longitud:-100.354915 titulo:@"Unidad Modelo"];
    
    [self UbicarAnnotation:25.748608 longitud:-100.361824 titulo:@"San Bernabé"];
	
    [self UbicarAnnotation:25.753942 longitud:-100.365257 titulo:@"Talleres"];
    
    
    
    
    //Linea 02..
    
    [self UbicarAnnotation:25.769016 longitud:-100.293288 titulo:@"Sendero"];
    
    [self UbicarAnnotation:25.752589 longitud:-100.298138 titulo:@"San Nicolás"];
    
    [self UbicarAnnotation:25.739775 longitud:-100.303137 titulo:@"Anáhuac"];
    
    [self UbicarAnnotation:25.724369 longitud:-100.308201 titulo:@"Universidad"];
    
    [self UbicarAnnotation:25.716965 longitud:-100.310905 titulo:@"Niños Heroes"];
    
    [self UbicarAnnotation:25.707908 longitud:-100.314102 titulo:@"Regina"];
    
    [self UbicarAnnotation:25.697148 longitud:-100.316548 titulo:@"General Anaya"];
	
    [self UbicarAnnotation:25.676922 longitud:-100.318276 titulo:@"Alameda"];
    
    [self UbicarAnnotation:25.67271 longitud:-100.319668 titulo:@"Fundadores"];
    
    [self UbicarAnnotation:25.66893 longitud:-100.315376 titulo:@"Padre Mier"];
    
    [self UbicarAnnotation:25.667571 longitud:-100.309599 titulo:@"General I. Zaragoza"];
    
    
    
    
    
    
}



-(void)UbicarAnnotation:(float)latitud longitud:(float)longitud titulo:(NSString *)titulo{

    self.mapaNL.delegate = self;
    
    MKCoordinateRegion regionHolidayInn;
    regionHolidayInn.center.latitude= latitud;
    regionHolidayInn.center.longitude= longitud;
    regionHolidayInn.span.longitudeDelta=0.016;
    regionHolidayInn.span.latitudeDelta=0.016;
    [mapaNL setRegion:regionHolidayInn animated:YES];
    
    mapAnnotation *annHolidayInn=[[mapAnnotation alloc]init];
    annHolidayInn.title = titulo;
    annHolidayInn.subtitle=@"";
    annHolidayInn.coordinate=regionHolidayInn.center;
    [mapaNL addAnnotation:annHolidayInn]; 
    

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


-(IBAction)Ubicacion:(id)sender{
    
    mapaNL.showsUserLocation = YES;
    
}

bool visible = TRUE;

-(IBAction)OcultaMuestra:(id)sender{
    
    if (visible == TRUE) {
        
        [UIButton animateWithDuration:0.3 animations:^(){ buttSimbologia.alpha = 0.0;}];
        [UIButton animateWithDuration:0.3 animations:^(){ buttEstaciones.alpha = 0.0;}];
        [UIButton animateWithDuration:0.3 animations:^(){ buttUbicacion.alpha = 0.0;}];
        [UIButton animateWithDuration:0.3 animations:^(){ buttOculta.alpha = 0.6;}];
        
        visible = FALSE;

    }
    else {
        
        [UIButton animateWithDuration:0.3 animations:^(){ buttSimbologia.alpha = 1.0;}];

 
        [UIButton animateWithDuration:0.3 animations:^(){ buttSimbologia.alpha = 1.0;}];
        [UIButton animateWithDuration:0.3 animations:^(){ buttEstaciones.alpha = 1.0;}];
        [UIButton animateWithDuration:0.3 animations:^(){ buttUbicacion.alpha = 1.0;}];
        [UIButton animateWithDuration:0.3 animations:^(){ buttOculta.alpha = 1.0;}];
        
        visible = TRUE;
        
        
    }
    
        
}

-(IBAction)MuestraSimbologia:(id)sender{
    
    [UIView animateWithDuration:0.2 animations:^(){ vistaSimbologia.alpha = 1.0;}];
    
    [UIButton animateWithDuration:0.3 animations:^(){ buttSimbologia.alpha = 0.0;}];
    [UIButton animateWithDuration:0.3 animations:^(){ buttEstaciones.alpha = 0.0;}];
    [UIButton animateWithDuration:0.3 animations:^(){ buttUbicacion.alpha = 0.0;}];
    [UIButton animateWithDuration:0.3 animations:^(){ buttOculta.alpha = 0.0;}];
    
    //[UIView animateWithDuration:0.6 animations:^(){ vistaSimbologia.alpha = 1.0;}];

    
}

-(IBAction)OcultaSimbolos:(id)sender{
    
    [UIButton animateWithDuration:0.3 animations:^(){ buttSimbologia.alpha = 1.0;}];
    [UIButton animateWithDuration:0.3 animations:^(){ buttEstaciones.alpha = 1.0;}];
    [UIButton animateWithDuration:0.3 animations:^(){ buttUbicacion.alpha = 1.0;}];
    [UIButton animateWithDuration:0.3 animations:^(){ buttOculta.alpha = 1.0;}];

    [UIView animateWithDuration:0.2 animations:^(){ vistaSimbologia.alpha = 0.0;}];
    
    
}


//Poner imagen
- (MKAnnotationView *)mapView:(MKMapView *)mv viewForAnnotation:(id <MKAnnotation>)annotation{
    
    
    if([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    NSString *annotationIdentifier = @"PinViewAnnotation";
    
    Mapann *pinView = (Mapann *) [mapaNL dequeueReusableAnnotationViewWithIdentifier:annotationIdentifier];
    if (!pinView)
    {
        pinView = [[Mapann alloc] initWithAnnotation:annotation reuseIdentifier:annotationIdentifier];
        
        
        
//        [pinView setPinColor:MKPinAnnotationColorGreen];
//        
//        pinView.animatesDrop = YES;
        
        pinView.canShowCallout = YES;
        
        
#pragma mark - Imagen TITULO
        //Encabezado e imagen del titulo
        
        UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"met01.png"]];
        
        [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
        
        pinView.leftCalloutAccessoryView = houseIconView;
        
         
        ////[houseIconView release];        
        
    }
    
    else
        
    {
        
        pinView.annotation = annotation;
        
    }
    
    return pinView;
    
}

@end
