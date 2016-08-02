/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View
} from 'react-native';
import JWPlayer from './components/JWPlayer';

class JWPlayerDemo extends Component {
  render() {
    return (
      <View style={styles.container}>
        <JWPlayer
          style={styles.player}
          autostart={true}
          file={'https://content.jwplatform.com/manifests/vM7nH0Kl.m3u8'}
          onBeforePlay={this._onBeforePlay.bind(this)}
          onPlay={this._onPlay.bind(this)}
          onPlayerError={this._onPlayerError.bind(this)}
          onBuffer={this._onBuffer.bind(this)}
          onTime={this._onTime.bind(this)}
        />
      </View>
    );
  }

  _onBeforePlay() {

  }

  _onPlay() {

  }

  _onPlayerError(error) {

  }

  _onBuffer() {

  }

  _onTime({ position, duration }) {

  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'transparent',
  },
  player: {
    flex: 1,
  }
});

AppRegistry.registerComponent('JWPlayerDemo', () => JWPlayerDemo);
