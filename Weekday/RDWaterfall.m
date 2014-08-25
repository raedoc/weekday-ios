#import "RDWaterfall.h"

@implementation RDWaterfall

- (void)drawBigDot:(CGContextRef)context x:(CGFloat) x y:(CGFloat)y {
    CGRect rectangle = CGRectMake(x, y, 10, 10);
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextFillEllipseInRect(context, rectangle);
}

- (void)drawLittleDot:(CGContextRef)context x:(CGFloat) x y:(CGFloat)y {
    CGRect rectangle = CGRectMake(x, y, 5, 5);
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextFillEllipseInRect(context, rectangle);
}

- (void)drawDotGroup:(CGContextRef)context x:(CGFloat) x y:(CGFloat)y {
    [self drawBigDot:context x:x y:y];
    [self drawLittleDot:context x:x+2.5 y:y+15];
    [self drawLittleDot:context x:x+2.5 y:y+25];
    [self drawLittleDot:context x:x+2.5 y:y+35];
    [self drawLittleDot:context x:x+2.5 y:y+45];
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self drawDotGroup:context x:10 y:0];
    [self drawDotGroup:context x:10 y:60];
}



@end
