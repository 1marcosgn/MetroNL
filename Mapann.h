//
//  Mapann.h
//  Wine
//
//  Created by Israel  Chavez flores on 24/05/12.
//  Copyright (c) 2012 FIPADE. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface Mapann : MKAnnotationView
- (id)initWithAnnotation:(id <MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier;

@end
