//
//  LineLabel.m
//  LCFDeerShop
//
//  Created by 李春菲 on 17/1/10.
//  Copyright © 2017年 lichunfei. All rights reserved.
//

#import "LineLabel.h"

@interface LineLabel ()
{
    CGRect labelFrame;
}

@end

@implementation LineLabel

-(instancetype)initWithFrame:(CGRect)frame{
    
    
    self = [super initWithFrame:frame];
    
    if(self){
        
        labelFrame = frame;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    [super drawRect:rect];
    
    if(!_color){
        
        _color = [UIColor grayColor];
    }
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextBeginPath(context);
    CGContextSetLineWidth(context,0.5);
    CGContextSetStrokeColorWithColor(context, _color.CGColor);
    CGContextMoveToPoint(context, 0,labelFrame.size.height/2.0);
    CGContextAddLineToPoint(context, rect.size.width,labelFrame.size.height/2.0);
    CGContextDrawPath(context, kCGPathEOFillStroke);
    
}
-(void)setColor:(UIColor *)color{
    
    _color = color;
    
}


@end
