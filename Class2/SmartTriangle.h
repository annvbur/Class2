#import <Foundation/Foundation.h>

@interface SmartTriangle : NSObject

@property (nonatomic) CGPoint pointA;
@property (nonatomic) CGPoint pointB;
@property (nonatomic) CGPoint pointC;
- (instancetype) initAPoint:(CGPoint) pointA
                    andBPoint:(CGPoint) pointB
                  andCPoint:(CGPoint) pointC;
- (float) perimeter;
- (float) square;
- (CGPoint) centeroid;
- (void) printToLog;

@end
