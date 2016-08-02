import React, {
  Component,
} from 'react';
import {
  requireNativeComponent,
  PropTypes,
} from 'react-native';

const NativePlayer = requireNativeComponent('JWPlayer', JWPlayer);

export default class JWPlayer extends Component {
  render() {
    return <NativePlayer ref="nativePlayer" {...this.props} />
  }
}
