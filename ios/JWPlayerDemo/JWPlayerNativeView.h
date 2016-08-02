//
//  JWPlayerView.h
//  JWPlayerDemo
//
//  Created by Chase McCarthy on 7/29/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "RCTViewManager.h"
#import <JWPlayer-SDK/JWPlayerController.h>
#import <UIKit/UIKit.h>

@interface JWPlayerNativeView : UIView
@property(nonatomic, strong)JWPlayerController *player;
@property(nonatomic, strong)NSString *file;
@property(nonatomic)BOOL autostart;
@property(nonatomic, copy)RCTBubblingEventBlock onBeforePlay;
@property(nonatomic, copy)RCTBubblingEventBlock onPlay;
@property(nonatomic, copy)RCTBubblingEventBlock onBuffer;
// Using `onError` as an event causes this error:
// http://i.imgur.com/VMhN1H1.png
// so I called it `onPlayerError`
@property(nonatomic, copy)RCTBubblingEventBlock onPlayerError;
@property(nonatomic, copy)RCTBubblingEventBlock onTime;
-(void)onJWPlayerBeforePlay;
-(void)onJWPlayerPlay;
-(void)onJWPlayerBuffer;
-(void)onJWPlayerError:(NSError *)error;
-(void)onJWPlayerTime:(double)position ofDuration:(double)duration;
@end
