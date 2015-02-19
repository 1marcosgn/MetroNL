//
//  Mapann.m
//  Wine
//
//  Created by Israel  Chavez flores on 24/05/12.
//  Copyright (c) 2012 FIPADE. All rights reserved.
//

#import "Mapann.h"

@implementation Mapann
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (id)initWithAnnotation:(id <MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier

{
    self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    
    if (self != nil)
        
    {
        
        CGRect frame = self.frame;
        
//        frame.size = CGSizeMake(60.0, 85.0);

        frame.size = CGSizeMake(60.0, 60.0);
        
        self.frame = frame;
        
        //Color del cuadrado 
        //self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        
        
        self.centerOffset = CGPointMake(-5, -5);
       
        
    }
    
    return self;
    
}


-(void) drawRect:(CGRect)rect

{
    
    //[[UIImage imageNamed:@"title.png"] drawInRect:CGRectMake(15, 0, 30, 30)];
    
    //Imagen del Mapa
    [[UIImage imageNamed:@"title.png"] drawInRect:CGRectMake(15, 15, 30, 30)];
    
    
}

@end
