//
//  QYQChatController.h
//  EmsClientDemo
//
//  Created by 球友圈 on 15/9/23.
//  Copyright (c) 2015年 cyt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZXChatController : ZXBaseUIViewController

@property(nonatomic, strong)NSString *kChatter;
@property(nonatomic,strong)NSMutableDictionary * infoDic;
@property(nonatomic,assign)BOOL isChatGroup;
@property (nonatomic,assign)BOOL isSystemMessage;

@end
