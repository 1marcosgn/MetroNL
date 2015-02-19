//
//  EstacionesViewController.m
//  Metro NL
//
//  Created by Claudia Oliva on 14/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "EstacionesViewController.h"
#import "mapAnnotation.h"

@interface EstacionesViewController ()

@end

@implementation EstacionesViewController

@synthesize mapaEstacion;

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
	
    //LINEA 01
    
    if ([labelEstacion.text isEqualToString:@"exposicion"]) {
        
        [self UbicarAnnotation:25.679629 longitud:-100.245738 titulo:@"Exposición"];
        
        
    }
    if ([labelEstacion.text isEqualToString:@"lerdo"]) {
        
        [self UbicarAnnotation:25.679822 longitud:-100.252347 titulo:@"Lerdo de Tejada"];
        
    }
    if ([labelEstacion.text isEqualToString:@"eloy"]) {
        
        [self UbicarAnnotation:25.680054 longitud:-100.264235 titulo:@"Eloy Cavazos"];
        
    }
    if ([labelEstacion.text isEqualToString:@"griega"]) {
        
        [self UbicarAnnotation:25.683129 longitud:-100.279427 titulo:@"Y Griega"];
        
    }
    if ([labelEstacion.text isEqualToString:@"fundidora"]) {
        
        [self UbicarAnnotation:25.683729 longitud:-100.288246 titulo:@"Parque Fundidora"];
        
    }
    if ([labelEstacion.text isEqualToString:@"felix"]) {
        
        [self UbicarAnnotation:25.684057 longitud:-100.296915 titulo:@"Félix U. Gómez"];
        
    }
    if ([labelEstacion.text isEqualToString:@"golfo"]) {
        
        [self UbicarAnnotation:25.685102 longitud:-100.306613 titulo:@"Del Golfo"];
        
    }
    if ([labelEstacion.text isEqualToString:@"cuau"]) {
        
        [self UbicarAnnotation:25.686359 longitud:-100.316741 titulo:@"Cuauhtémoc"];
        
    }
    if ([labelEstacion.text isEqualToString:@"central"]) {
        
        [self UbicarAnnotation:25.687209 longitud:-100.324402 titulo:@"Central"];
        
    }
    if ([labelEstacion.text isEqualToString:@"edison"]) {
        
        [self UbicarAnnotation:25.686861 longitud:-100.333972 titulo:@"Edison"];
        
    }
    if ([labelEstacion.text isEqualToString:@"hospital"]) {
        
        [self UbicarAnnotation:25.692121 longitud:-100.344143 titulo:@"Hospital"];
        
    }
    if ([labelEstacion.text isEqualToString:@"simon"]) {
        
        [self UbicarAnnotation:25.699352 longitud:-100.343714 titulo:@"Simón Bolivar"];
        
    }
    if ([labelEstacion.text isEqualToString:@"mitras"]) {
        
        [self UbicarAnnotation:25.705907 longitud:-100.342619 titulo:@"Mitras"];
        
    }
    if ([labelEstacion.text isEqualToString:@"alfonso"]) {
        
        [self UbicarAnnotation:25.715941 longitud:-100.342534 titulo:@"Alfonso Reyes"];
        
    }
    if ([labelEstacion.text isEqualToString:@"penitenciaria"]) {
        
        [self UbicarAnnotation:25.72348 longitud:-100.342813 titulo:@"Penitenciaria"];
        
    }
    if ([labelEstacion.text isEqualToString:@"aztlan"]) {
        
        [self UbicarAnnotation:25.732372 longitud:-100.347319 titulo:@"Aztlán"];
        
    }
    if ([labelEstacion.text isEqualToString:@"modelo"]) {
        
        [self UbicarAnnotation:25.742597 longitud:-100.354915 titulo:@"Unidad Modelo"];
        
    }
    if ([labelEstacion.text isEqualToString:@"bernabe"]) {
        
        [self UbicarAnnotation:25.748608 longitud:-100.361824 titulo:@"San Bernabé"];
        
    }
    if ([labelEstacion.text isEqualToString:@"talleres"]) {
        
        [self UbicarAnnotation:25.753942 longitud:-100.365257 titulo:@"Talleres"];
        
    }
    
            
    //LINEA 02
    if ([labelEstacion.text isEqualToString:@"sendero"]) {
        
        [self UbicarAnnotation:25.769016 longitud:-100.293288 titulo:@"Sendero"];
        
    }
    if ([labelEstacion.text isEqualToString:@"nicolas"]) {
        
        [self UbicarAnnotation:25.752589 longitud:-100.298138 titulo:@"San Nicolás"];
        
    }
    if ([labelEstacion.text isEqualToString:@"anahuac"]) {
        
        [self UbicarAnnotation:25.739775 longitud:-100.303137 titulo:@"Anáhuac"];
        
    }
    if ([labelEstacion.text isEqualToString:@"universidad"]) {
        
        [self UbicarAnnotation:25.724369 longitud:-100.308201 titulo:@"Universidad"];
        
    }
    if ([labelEstacion.text isEqualToString:@"heroes"]) {
        
        [self UbicarAnnotation:25.716965 longitud:-100.310905 titulo:@"Niños Heroes"];
        
    }
    
    if ([labelEstacion.text isEqualToString:@"regina"]) {
        
        [self UbicarAnnotation:25.707908 longitud:-100.314102 titulo:@"Regina"];
        
    }
    if ([labelEstacion.text isEqualToString:@"anaya"]) {
        
        [self UbicarAnnotation:25.697148 longitud:-100.316548 titulo:@"General Anaya"];
        
    }
    if ([labelEstacion.text isEqualToString:@"cuau01"]) {
        
        [self UbicarAnnotation:25.686252 longitud:-100.316548 titulo:@"Cuauhtémoc"];
        
    }
    if ([labelEstacion.text isEqualToString:@"alameda"]) {
        
        [self UbicarAnnotation:25.676922 longitud:-100.318276 titulo:@"Alameda"];
        
    }
    if ([labelEstacion.text isEqualToString:@"fundadores"]) {
        
        [self UbicarAnnotation:25.67271 longitud:-100.319668 titulo:@"Fundadores"];
        
    }
    if ([labelEstacion.text isEqualToString:@"padremier"]) {
        
        [self UbicarAnnotation:25.66893 longitud:-100.315376 titulo:@"Padre Mier"];
        
    }
    if ([labelEstacion.text isEqualToString:@"zaragoza"]) {
        
        [self UbicarAnnotation:25.667571 longitud:-100.309599 titulo:@"General I. Zaragoza"];
        
    }
    
    
    

    
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


//-(void)UbicarAnnotation:(float)latitud longitud:(float)longitud titulo:(NSString *)titulo{

-(void)UbicarAnnotation:(float)latitud longitud:(float)longitud titulo:(NSString *)titulo{
    
    self.mapaEstacion.delegate = self;
    
    MKCoordinateRegion regionHolidayInn;
    regionHolidayInn.center.latitude= latitud;
    regionHolidayInn.center.longitude= longitud;
    regionHolidayInn.span.longitudeDelta=0.016;
    regionHolidayInn.span.latitudeDelta=0.016;
    [mapaEstacion setRegion:regionHolidayInn animated:YES];
    
    mapAnnotation *annHolidayInn=[[mapAnnotation alloc]init];
    annHolidayInn.title = titulo;
    annHolidayInn.subtitle=@"";
    annHolidayInn.coordinate=regionHolidayInn.center;
    [mapaEstacion addAnnotation:annHolidayInn]; 
    
    
}


//Poner imagen
- (MKAnnotationView *)mapView:(MKMapView *)mv viewForAnnotation:(id <MKAnnotation>)annotation{
    
    
    if([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    NSString *annotationIdentifier = @"PinViewAnnotation";
    
    Mapann *pinView = (Mapann *) [mapaEstacion dequeueReusableAnnotationViewWithIdentifier:annotationIdentifier];
    if (!pinView)
    {
        pinView = [[Mapann alloc] initWithAnnotation:annotation reuseIdentifier:annotationIdentifier];
        
        
        
        //        [pinView setPinColor:MKPinAnnotationColorGreen];
        //        
        //        pinView.animatesDrop = YES;
        
        pinView.canShowCallout = YES;
        
        
#pragma mark - Imagen TITULO
        //Encabezado e imagen del titulo
        
        //LINEA 01
        if ([labelEstacion.text isEqualToString:@"exposicion"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"01expo.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;

        }
        if ([labelEstacion.text isEqualToString:@"lerdo"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"02tejada.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"eloy"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"03eloy.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"griega"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"04ygriega.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"fundidora"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"05fundidora.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"felix"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"06felix.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"golfo"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"07golfo.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"cuau"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"08cuauhtemoc.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"central"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"09central.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"edison"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"10edison.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"hospital"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"11hospital.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"simon"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"12bolivar.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"mitras"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"10mitras.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"alfonso"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"11reyes.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"penitenciaria"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"12penitenciaria.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"aztlan"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"13aztlan.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"modelo"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"14modelo.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"bernabe"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"15sanbernabe.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"talleres"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"16talleres.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        
        //LINEA 02
        
        if ([labelEstacion.text isEqualToString:@"sendero"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"L201sendero.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"tapia"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"L202tapia.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"nicolas"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"L203sannicolas.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"anahuac"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"L204anahuac.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"universidad"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"L205universidad.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        
        if ([labelEstacion.text isEqualToString:@"heroes"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"L206heroes.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"regina"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"L207regina.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"anaya"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"L208anaya.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"cuau01"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"L209cuauthemoc.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"alameda"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"L210alameda.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        
        if ([labelEstacion.text isEqualToString:@"fundadores"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"L211fundadores.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"padremier"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"L212padremier.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }
        if ([labelEstacion.text isEqualToString:@"zaragoza"]) {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"L213geranzaragoza.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;
            
        }

        
        
        /*
        else {
            
            UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"title.png"]];
            
            [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
            
            pinView.leftCalloutAccessoryView = houseIconView;

        }*/
        
                
        
    }
    
    else
        
    {
        
        pinView.annotation = annotation;
        
    }
    
    return pinView;
    
}



-(IBAction)MostrarUbicacion:(id)sender{
    
    mapaEstacion.showsUserLocation = YES;
    
}


-(IBAction)OultaVista:(id)sender{
    
    [UIView animateWithDuration:0.4 animations:^(){NvVista.alpha = 0.0;}];
    [UIButton animateWithDuration:0.4 animations:^(){NvButtonOculta.alpha = 0.0;}];
    
}

-(IBAction)MostrarVista:(id)sender{
    
    [UIView animateWithDuration:0.4 animations:^(){NvVista.alpha = 1.0;}];
    [UIButton animateWithDuration:0.4 animations:^(){NvButtonOculta.alpha = 1.0;}];
    
}


@end
