//
//  JWPlayerDelegateProxy.h
//  JWPlayerDemo
//
//  Created by Chase McCarthy on 7/29/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "JWPlayerNativeView.h"

@interface JWPlayerDelegateProxy : NSObject<JWPlayerDelegate>
@property(nonatomic, strong)JWPlayerNativeView *delegate;
-(void)onBeforePlay;
-(void)onPlay;
-(void)onBuffer;
-(void)onError:(NSError *)error;
-(void)onTime:(double)position ofDuration:(double)duration;
@end