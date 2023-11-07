//
//  Friend.m
//  Obj-C_tutorial
//
//  Created by 김도훈 on 11/6/23.
//

#import <Foundation/Foundation.h>
#import "Friend.h"

// 클래스 확장 - 클래스 안에서 사용
@interface Friend ()
{
    NSString *_name;
}
@end

// 구현부
@implementation Friend

- (void)sayHello{
    
    self->_name = @"호롤롤로";
    
    self->_nickname = @"쩡대리";
    
    NSLog(@"안녕하세요?!?! %@", self->_name);
}

+ (void)sayGoodbye {
    NSLog(@"잘가요!!");
}

+ (id)getAFriend {
    
    Friend *aFriend = [[Friend alloc] init];
    
    [aFriend setNickname: @"호호호호호호"];
    
    return aFriend;
}

+ (Friend *)getMyFriend {

    Friend *aFriend = [[Friend alloc] init];

    [aFriend setNickname: @"내친구임!!"];

    return aFriend;
}


@end
