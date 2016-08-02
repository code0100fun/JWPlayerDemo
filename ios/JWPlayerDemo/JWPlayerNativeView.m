//
//  JWPlayerView.m
//  JWPlayerDemo
//
//  Created by Chase McCarthy on 7/29/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "JWPlayerNativeView.h"
#import "JWPlayerDelegateProxy.h"

@implementation JWPlayerNativeView

- (instancetype)init
{
  if (self = [super init]) {
    [self addSubview:self.player.view];
  }
  return self;
}

- (JWPlayerController *)player {
  if (!_player) {
    JWConfig *config = [self setupConfig];

    JWPlayerDelegateProxy *proxy = [JWPlayerDelegateProxy new];
    proxy.delegate = self;
    _player = [[JWPlayerController alloc] initWithConfig:config delegate:proxy];
  }

  return _player;
}

-(JWConfig*)setupConfig
{
  JWConfig *config = [JWConfig new];
  config.controls = YES;
  config.repeat = NO;
  config.premiumSkin = JWPremiumSkinStormtrooper;
  config.autostart = YES;
  config.stretch = JWStretchUniform;
  return config;
}

-(void)setFile:(NSString *)file
{
  self.player.config.file = file;
  [self.player play];
}

-(NSString *)file
{
  return self.player.config.file;
}

-(void)layoutSubviews
{
  [super layoutSubviews];
  self.player.view.frame = self.frame;
}

#pragma mark - JWPlayer Delegate

-(void)onJWPlayerBeforePlay {
  if (self.onBeforePlay) {
    self.onBeforePlay(@{});
  }
}

-(void)onJWPlayerPlay {
  if (self.onPlay) {
    self.onPlay(@{});
  }
}

-(void)onJWPlayerBuffer {
  if (self.onBuffer) {
    self.onBuffer(@{});
  }
}

-(void)onJWPlayerError:(NSError *)error {
  if (self.onPlayerError) {
    self.onPlayerError(@{@"message": error.localizedDescription, @"info": error.userInfo});
  }
}

-(void)onJWPlayerTime:(double)position ofDuration:(double)duration {
  if (self.onTime) {
    self.onTime(@{@"position": @(position), @"duration": @(duration)});
  }
}

@end