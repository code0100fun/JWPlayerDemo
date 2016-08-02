# JWPlayer React Native Demo

## Running

```bash
$ cd ios/
$ pod install
$ open JWPlayerDemo.xcworkspace/
```

### Set License key

Put your license key in the `Info.plist` at `JWPlayerKey`.

Run with XCode or run:

```bash
$ react-native run-ios
```

## Configure Player

```jsx
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
```
