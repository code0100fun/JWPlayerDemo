//
//  JWPlayerDelegateProxy.m
//  JWPlayerDemo
//
//  Created by Chase McCarthy on 7/29/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "JWPlayerDelegateProxy.h"

@implementation JWPlayerDelegateProxy
#pragma mark - JWPlayer Delegate

-(void)onBeforePlay {
  [self.delegate onJWPlayerBeforePlay];
}

-(void)onPlay {
  [self.delegate onJWPlayerPlay];
}

-(void)onBuffer {
  [self.delegate onJWPlayerBuffer];
}

-(void)onError:(NSError *)error {
  [self.delegate onJWPlayerError:error];
}

-(void)onTime:(double)position ofDuration:(double)duration {
  [self.delegate onJWPlayerTime:position ofDuration:duration];
}
@end