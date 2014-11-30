@interface SmartRect: NSObject// декларация

@property (nonatomic) CGPoint origin;

@property (nonatomic)float width;

@property (nonatomic)float height;
- (instancetype) initWithOrigin:(CGPoint) origin
                    andWidth:(float) width
                      andHeight:(float) height;
- (float) square; //c объектом - не с к классом
- (CGPoint) center;
- (float) diag;
- (SmartRect *)intersectionWithRect:(SmartRect*) otherRect;
- (BOOL) isPointInRect: (CGPoint) point;
- (BOOL) isContainRect: (SmartRect*) otherRect;

@end// описание интерфейса закончилось

