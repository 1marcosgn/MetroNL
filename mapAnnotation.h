//
//  mapAnnotation.h
//  TurismoST
//
//  Created by Marcos Garcia on 25/01/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MKAnnotation.h>

@interface mapAnnotation : NSObject <MKAnnotation>{
    
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
    
}

@property (nonatomic,assign)CLLocationCoordinate2D coordinate;
@property (nonatomic,copy)NSString *title;
@property (nonatomic,copy)NSString *subtitle;


@end
