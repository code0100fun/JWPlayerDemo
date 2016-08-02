//
//  JWPlayerManager.m
//  JWPlayerDemo
//
//  Created by Chase McCarthy on 7/29/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import <JWPlayer-SDK/JWPlayerController.h>

#import "JWPlayerManager.h"
#import "JWPlayerNativeView.h"

@interface JWPlayerManager ()
@property(nonatomic, strong)JWPlayerNativeView *playerView;
@end

@implementation JWPlayerManager

RCT_EXPORT_MODULE(JWPlayer)

- (UIView *)view
{
  return [[JWPlayerNativeView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(onBeforePlay, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onPlay, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onBuffer, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onPlayerError, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onTime, RCTBubblingEventBlock);

RCT_EXPORT_VIEW_PROPERTY(file, NSString);
RCT_EXPORT_VIEW_PROPERTY(autoPlay, BOOL);

@end