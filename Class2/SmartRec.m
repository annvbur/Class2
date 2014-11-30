#import <Foundation/Foundation.h>
#import "SmartRec.h"




@implementation SmartRect// реализация

- (instancetype) initWithOrigin:(CGPoint)origin
                    andWidth:(float)width
                      andHeight:(float)height{
    
                        self = [super init];
    
                        if (self){
                            self.origin = origin;
                            self.width = width;
                            self.height = height;
                        }
                        return self;
    
    
}

- (float) square{
    float result = self.height * self.width;
    return result;
    
    return 0;
    
}//c объектом - не с к классом (xctckb + hf,jnftn c rkfccjv - tckb - - c c j,]trnjv
- (CGPoint) center{
    float y = self.origin.y + 0.5 * self.width;
    float x = self.origin.x + 0.5 * self.height;
    CGPoint result = {x,y};
    return result;
}
- (float) diag{
    float result = sqrtf(powf(self.width, 2)+(powf(self.height, 2)) );
    return result;
    return 0;
}


- (NSString *)description{// выводит наш ориджин- ширину и всоту
    NSString* result;
    
    result = [NSString stringWithFormat:@"x=%g y=%g width=%g height=%g", self.origin.x, self.origin.y, self.width, self.height]; // можно _ или селф.
    return result;

}

- (BOOL) isPointInRect: (CGPoint) point;{
    BOOL result = NO;
    if ((point.x>= self.origin.x && point.x<= self.origin.x + self.width)&&(point.y>=self.origin.y && point.y<= self.origin.y + self.height)){
        result = YES;
    }
    ;
    
    return result;
}

- (BOOL) isContainRect: (SmartRect*) otherRect{
    BOOL result = NO;
    int count = [self isPointInRect: otherRect.origin];
    count = count + [self isPointInRect:CGPointMake(otherRect.origin.x + otherRect.width, otherRect.origin.y)];
    count = count + [self isPointInRect:CGPointMake(otherRect.origin.x, otherRect.origin.y + otherRect.height)];
    count = count + [self isPointInRect:CGPointMake(otherRect.origin.x + otherRect.width, otherRect.origin.y + otherRect.height)];
    result = count == 4;
    return result;
    
    
}

@end