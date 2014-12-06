#import <Foundation/Foundation.h>
#import "SmartRec.h"
#import <math.h>
#import "SmartCircle.h"
#import "SmartTriangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SmartRect *rect = [[SmartRect alloc] initWithOrigin:CGPointMake(45, 56) andWidth:80 andHeight:60];
        
        SmartRect *rect1 = [[SmartRect alloc] initWithOrigin:CGPointMake(45, 56) andWidth:10 andHeight:50];
        
        BOOL isPointInRect1 = [rect isPointInRect: CGPointMake(45, 56) ];
        BOOL isPointInRect2 = [rect isPointInRect: CGPointMake(55, 120) ];

        NSLog(@"Point is %@ rect", isPointInRect1? @"In" : @"Out");
        NSLog(@"Point is %@ rect", isPointInRect2? @"In" : @"Out"); // тернарный оператор - потому что используется 3 позиции
        
        BOOL isContainRect = [rect isContainRect:rect1];
        NSLog(@"Rect %@ is %@ rect %@", rect, isContainRect? @"In" : @"Out",rect1);
        
        
//        rect.origin = CGPointMake(50,40);//коммон зажатьи посмотреть - функция описывает переменную - заполняет структуру и возвращает ее
//        rect.width = 80;
//        rect.height = 60;
        
        NSLog(@"%@,\n, %g, %g, %g, %g ", [rect description], [rect square], [rect center].x, [rect center].y, [rect diag]);//cам выводит в описание
        
        SmartCircle *circle = [[SmartCircle alloc] initWithCenter:CGPointMake(0, 0) andRadius:10];
        NSLog(@"Circle %@\n, %g", [circle description], [circle square]);
        
        BOOL isPointInCircle = [circle isPointInCircle: CGPointMake(-7.5,-7.5 )];
        NSLog(@"Point is %@ circle", isPointInCircle? @"In" : @"Out");
        
        BOOL isRectInCircle = [circle isContainRect:rect];
        NSLog(@"Rect is %@ circle", isPointInCircle? @"In" : @"Out");
        
        SmartTriangle *triangle = [[SmartTriangle alloc]initAPoint: CGPointMake(5, 5) andBPoint: CGPointMake(10, 10) andCPoint: CGPointMake(12, 1)];
        NSLog(@"%@,\n square is  %g, perimeter is %g, centeroidx %g, centeroid y %g ",[triangle description],[triangle square],[triangle perimeter], [triangle centeroid]);
        
    }
    return 0;
}
