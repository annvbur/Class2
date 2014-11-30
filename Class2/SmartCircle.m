#import "SmartCircle.h"
#import "SmartRec.h"

@implementation SmartCircle

- (instancetype) initWithCenter:(CGPoint) center
                      andRadius:(float) radius{
    
    self = [super init];
    
    if (self){
        self.center = center;
        self.radius = radius;
    }
    return self;
    
    
}
- (NSString *)description{// выводит наш ориджин- ширину и всоту
    NSString* result;
    
    result = [NSString stringWithFormat:@"x=%g y=%g radius=%g", self.center.x, self.center.y, self.radius]; // можно _ или селф.
    return result;
    
}


- (float) square{
    float result = self.radius * self.radius * 3.14;
    return result;
}

-(BOOL)isPointInCircle:(CGPoint)point{
    BOOL result = NO;
    if (sqrt((point.x - self.center.x)*(point.x - self.center.x) + (point.y - self.center.y)*(point.y - self.center.y)) < self.radius){
        result = YES;
    };
    
    return result;
}
- (BOOL) isContainRect: (SmartRect*) rect{
    int points = [self isPointInCircle:rect.origin];
    CGPoint tr = CGPointMake(rect.origin.x + rect.width, rect.origin.y);
    points = points + [self isPointInCircle:tr];
    CGPoint bl = CGPointMake(rect.origin.x, rect.origin.y + rect.height);
    points = points + [self isPointInCircle:bl];
    BOOL result = points == 4;
    return result;
    
}

@end
