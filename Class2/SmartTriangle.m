#import "SmartTriangle.h"

@implementation SmartTriangle

- (instancetype) initAPoint:(CGPoint) pointA
                      andBPoint:(CGPoint) pointB
                  andCPoint:(CGPoint) pointC{
    
    self = [super init];
    
    if (self){
        self.pointA = pointA;
        self.pointB = pointB;
        self.pointC = pointC;
    }
    return self;
    
    
}

- (float) distance{
    float result = (sqrt((self.pointA.x - self.pointB.x)*(self.pointA.x - self.pointB.x) + (self.pointA.y - self.pointB.y)*(self.pointA.y - self.pointB.y)));
    
    return result;
}

- (float) perimeter{
    float result = (sqrt((self.pointA.x - self.pointB.x)*(self.pointA.x - self.pointB.x) + (self.pointA.y - self.pointB.y)*(self.pointA.y - self.pointB.y))) + (sqrt((self.pointB.x - self.pointC.x)*(self.pointB.x - self.pointC.x) + (self.pointB.y - self.pointC.y)*(self.pointB.y - self.pointC.y))) + (sqrt((self.pointC.x - self.pointA.x)*(self.pointC.x - self.pointA.x) + (self.pointC.y - self.pointA.y)*(self.pointC.y - self.pointA.y)));
    return result;
    
}

- (float) square{
    float result = 0.5 * fabsf((self.pointB.x - self.pointA.x)*(self.pointC.x - self.pointA.x) - (self.pointC.x - self.pointA.x)*(self.pointB.x - self.pointA.x));
    return result;
}
- (CGPoint) centeroid{
    float y = (self.pointA.x +self.pointB.x + self.pointC.x)/3;
    float x = (self.pointA.y +self.pointB.y + self.pointC.y)/3;

    CGPoint result = {x,y};
    return result;
}
- (NSString *)description{
    NSString* result;
    
    result = [NSString stringWithFormat:@"xa=%g ya=%g xb=%g yb=%g xc=%g yc=%g", self.pointA.x, self.pointA.y, self.pointB.x, self.pointB.y, self.pointC.x, self.pointC.y]; // можно _ или селф.
    return result;
    
}
- (void) printToLog{
    NSLog(@"xa=%g ya=%g xb=%g yb=%g xc=%g yc=%g/n perimeter=%g/n square=%g/n centx=%g centy=%g", self.pointA.x, self.pointA.y, self.pointB.x, self.pointB.y, self.pointC.x, self.pointC.y, self.perimeter, self.square, self.centeroid.x, self.centeroid.y);
}


@end
