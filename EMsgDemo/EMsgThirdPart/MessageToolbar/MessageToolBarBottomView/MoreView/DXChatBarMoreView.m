/************************************************************
  *  * EaseMob CONFIDENTIAL 
  * __________________ 
  * Copyright (C) 2013-2014 EaseMob Technologies. All rights reserved. 
  *  
  * NOTICE: All information contained herein is, and remains 
  * the property of EaseMob Technologies.
  * Dissemination of this information or reproduction of this material 
  * is strictly forbidden unless prior written permission is obtained
  * from EaseMob Technologies.
  */

#import "DXChatBarMoreView.h"

#define CHAT_BUTTON_SIZE 50
#define INSETS 8

@implementation DXChatBarMoreView

- (instancetype)initWithFrame:(CGRect)frame type:(ChatMoreType)type
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setupSubviewsForType:type];
    }
    return self;
}

- (void)setupSubviewsForType:(ChatMoreType)type
{
    self.backgroundColor = [UIColor clearColor];
    CGFloat insets = (self.frame.size.width - 4 * CHAT_BUTTON_SIZE) / 5;
    
    _photoButton =[UIButton buttonWithType:UIButtonTypeCustom];
    [_photoButton setFrame:CGRectMake(insets, 10, CHAT_BUTTON_SIZE , CHAT_BUTTON_SIZE)];
    [_photoButton setTitle:@"相册" forState:UIControlStateNormal];
    [_photoButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [_photoButton setImage:[UIImage imageNamed:@"chatBar_colorMore_photo"] forState:UIControlStateNormal];
//    [_photoButton setImage:[UIImage imageNamed:@"chatBar_colorMore_photoSelected"] forState:UIControlStateHighlighted];
    [_photoButton addTarget:self action:@selector(photoAction) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_photoButton];
    
    _locationButton =[UIButton buttonWithType:UIButtonTypeCustom];
    [_locationButton setFrame:CGRectMake(insets * 2 + CHAT_BUTTON_SIZE, 10, CHAT_BUTTON_SIZE , CHAT_BUTTON_SIZE)];
    [_locationButton setTitle:@"位置" forState:UIControlStateNormal];
    [_locationButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [_locationButton setImage:[UIImage imageNamed:@"chatBar_colorMore_location"] forState:UIControlStateNormal];
//    [_locationButton setImage:[UIImage imageNamed:@"chatBar_colorMore_locationSelected"] forState:UIControlStateHighlighted];
    [_locationButton addTarget:self action:@selector(locationAction) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_locationButton];
    
    _takePicButton =[UIButton buttonWithType:UIButtonTypeCustom];
    [_takePicButton setFrame:CGRectMake(insets * 3 + CHAT_BUTTON_SIZE * 2, 10, CHAT_BUTTON_SIZE , CHAT_BUTTON_SIZE)];
    [_takePicButton setTitle:@"拍照" forState:UIControlStateNormal];
    [_takePicButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [_takePicButton setImage:[UIImage imageNamed:@"chatBar_colorMore_camera"] forState:UIControlStateNormal];
//    [_takePicButton setImage:[UIImage imageNamed:@"chatBar_colorMore_cameraSelected"] forState:UIControlStateHighlighted];
    [_takePicButton addTarget:self action:@selector(takePicAction) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_takePicButton];

    CGRect frame = self.frame;
    frame.size.height = 150;

    if (type == ChatMoreTypeChat) {
        _audioCallButton =[UIButton buttonWithType:UIButtonTypeCustom];
        [_audioCallButton setFrame:CGRectMake(insets * 4 + CHAT_BUTTON_SIZE * 3, 10, CHAT_BUTTON_SIZE , CHAT_BUTTON_SIZE)];
        [_audioCallButton setTitle:@"语音" forState:UIControlStateNormal];
        [_audioCallButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//        [_audioCallButton setImage:[UIImage imageNamed:@"chatBar_colorMore_audioCall"] forState:UIControlStateNormal];
//        [_audioCallButton setImage:[UIImage imageNamed:@"chatBar_colorMore_audioCallSelected"] forState:UIControlStateHighlighted];
        [_audioCallButton addTarget:self action:@selector(takeAudioCallAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_audioCallButton];
        
        _videoCallButton =[UIButton buttonWithType:UIButtonTypeCustom];
        [_videoCallButton setFrame:CGRectMake(insets, 10 * 2 + CHAT_BUTTON_SIZE + 10, CHAT_BUTTON_SIZE , CHAT_BUTTON_SIZE)];
        [_videoCallButton setTitle:@"礼物" forState:UIControlStateNormal];
        [_videoCallButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //        [_videoCallButton setImage:[UIImage imageNamed:@"chatBar_colorMore_videoCall"] forState:UIControlStateNormal];
        //        [_videoCallButton setImage:[UIImage imageNamed:@"chatBar_colorMore_videoCallSelected"] forState:UIControlStateHighlighted];
        [_videoCallButton addTarget:self action:@selector(takeVideoCallAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_videoCallButton];
        
        
        _smallVideoButton =[UIButton buttonWithType:UIButtonTypeCustom];
        [_smallVideoButton setFrame:CGRectMake(insets * 2 + CHAT_BUTTON_SIZE, 10 * 2 + CHAT_BUTTON_SIZE + 10, CHAT_BUTTON_SIZE , CHAT_BUTTON_SIZE)];
        [_smallVideoButton setTitle:@"视频" forState:UIControlStateNormal];
        [_smallVideoButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //    [_smallVideoButton setImage:[UIImage imageNamed:@"chatBar_colorMore_location"] forState:UIControlStateNormal];
        //    [_smallVideoButton setImage:[UIImage imageNamed:@"chatBar_colorMore_locationSelected"] forState:UIControlStateHighlighted];
        [_smallVideoButton addTarget:self action:@selector(smallViedoAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_smallVideoButton];
        
        _personalCardButton =[UIButton buttonWithType:UIButtonTypeCustom];
        [_personalCardButton setFrame:CGRectMake(insets * 3 + CHAT_BUTTON_SIZE * 2, 10 * 2 + CHAT_BUTTON_SIZE + 10, CHAT_BUTTON_SIZE , CHAT_BUTTON_SIZE)];
        [_personalCardButton setTitle:@"名片" forState:UIControlStateNormal];
        [_personalCardButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //    [_personalCardButton setImage:[UIImage imageNamed:@"chatBar_colorMore_camera"] forState:UIControlStateNormal];
        //    [_personalCardButton setImage:[UIImage imageNamed:@"chatBar_colorMore_cameraSelected"] forState:UIControlStateHighlighted];
        [_personalCardButton addTarget:self action:@selector(personalAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_personalCardButton];
    }
    else if (type == ChatMoreTypeGroupChat)
    {
        _videoCallButton =[UIButton buttonWithType:UIButtonTypeCustom];
        [_videoCallButton setFrame:CGRectMake(insets, 10 * 2 + CHAT_BUTTON_SIZE + 10, CHAT_BUTTON_SIZE , CHAT_BUTTON_SIZE)];
        [_videoCallButton setTitle:@"礼物" forState:UIControlStateNormal];
        [_videoCallButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //        [_videoCallButton setImage:[UIImage imageNamed:@"chatBar_colorMore_videoCall"] forState:UIControlStateNormal];
        //        [_videoCallButton setImage:[UIImage imageNamed:@"chatBar_colorMore_videoCallSelected"] forState:UIControlStateHighlighted];
        [_videoCallButton addTarget:self action:@selector(takeVideoCallAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_videoCallButton];
        
        
        _smallVideoButton =[UIButton buttonWithType:UIButtonTypeCustom];
        [_smallVideoButton setFrame:CGRectMake(insets * 2 + CHAT_BUTTON_SIZE, 10 * 2 + CHAT_BUTTON_SIZE + 10, CHAT_BUTTON_SIZE + 10 , CHAT_BUTTON_SIZE)];
        [_smallVideoButton setTitle:@"视频" forState:UIControlStateNormal];
        [_smallVideoButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //    [_smallVideoButton setImage:[UIImage imageNamed:@"chatBar_colorMore_location"] forState:UIControlStateNormal];
        //    [_smallVideoButton setImage:[UIImage imageNamed:@"chatBar_colorMore_locationSelected"] forState:UIControlStateHighlighted];
        [_smallVideoButton addTarget:self action:@selector(smallViedoAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_smallVideoButton];
        
        _personalCardButton =[UIButton buttonWithType:UIButtonTypeCustom];
        [_personalCardButton setFrame:CGRectMake(insets * 3 + CHAT_BUTTON_SIZE * 2, 10 * 2 + CHAT_BUTTON_SIZE + 10, CHAT_BUTTON_SIZE , CHAT_BUTTON_SIZE)];
        [_personalCardButton setTitle:@"名片" forState:UIControlStateNormal];
        [_personalCardButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //    [_personalCardButton setImage:[UIImage imageNamed:@"chatBar_colorMore_camera"] forState:UIControlStateNormal];
        //    [_personalCardButton setImage:[UIImage imageNamed:@"chatBar_colorMore_cameraSelected"] forState:UIControlStateHighlighted];
        [_personalCardButton addTarget:self action:@selector(personalAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_personalCardButton];
    }
    self.frame = frame;
}

#pragma mark - action

- (void)takePicAction{
    if(_delegate && [_delegate respondsToSelector:@selector(moreViewTakePicAction:)]){
        [_delegate moreViewTakePicAction:self];
    }
}

- (void)photoAction
{
    if (_delegate && [_delegate respondsToSelector:@selector(moreViewPhotoAction:)]) {
        [_delegate moreViewPhotoAction:self];
    }
}

- (void)locationAction
{
    if (_delegate && [_delegate respondsToSelector:@selector(moreViewLocationAction:)]) {
        [_delegate moreViewLocationAction:self];
    }
}

- (void)takeAudioCallAction
{
    if (_delegate && [_delegate respondsToSelector:@selector(moreViewAudioCallAction:)]) {
        [_delegate moreViewAudioCallAction:self];
    }
}

- (void)takeVideoCallAction
{
    if (_delegate && [_delegate respondsToSelector:@selector(moreViewVideoCallAction:)]) {
        [_delegate moreViewVideoCallAction:self];
    }
}

- (void)smallViedoAction
{
    if (_delegate && [_delegate respondsToSelector:@selector(moreViewSmallVideoAction:)]) {
        [_delegate moreViewSmallVideoAction:self];
    }
}

- (void)personalAction
{
    if (_delegate && [_delegate respondsToSelector:@selector(moreViewVideoCallAction:)]) {
        [_delegate moreViewpersonalCardAction:self];
    }
}

@end
