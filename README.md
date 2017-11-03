![logo](https://github.com/pcpLiu/Serrano/blob/master/logo.png)

<p align="center">
	<a href="https://travis-ci.com/pcpLiu/serrano/">
        <img src="https://travis-ci.org/pcpLiu/Serrano.svg?branch=master" alt="travisCI-building">
  </a>
  <a href="https://codecov.io/gh/pcpLiu/serrano">
        <img src="https://codecov.io/gh/pcpLiu/serrano/branch/master/graph/badge.svg?token=4YATtfzXIv" alt="coverage">
  </a>
  <a href="https://github.com/pcpLiu/serrano">
        <img src="https://img.shields.io/badge/iOS-10.0%2B-blue.svg" alt="iOS">
  </a>
  <a href="https://github.com/pcpLiu/serrano">
        <img src="https://img.shields.io/badge/macOS-10.11%2B-lightgrey.svg" alt="macOS">
  </a>
  <a href="https://opensource.org/licenses/MIT">
        <img src="https://img.shields.io/badge/License-MIT-green.svg" alt="License: MIT">
  </a>
  <a href="https://swift.org">
        <img src="https://img.shields.io/badge/swift-3.2-09bf61.svg" alt="Swift 3.2">
  </a>
  <a href="https://gitter.im/serranoiOS">
        <img src="https://badges.gitter.im/pcpLiu/serranoiOS.svg" alt="gitter">
  </a>
</p>

## Serrano 
Aiming to offering popular and cutting edge techs in deep learning area on iOS devices, Serrano is developed as a tool for developers & researchers with deep learning background to quickly implement their ideas on iOS devices. Meanwhile, it supports macOS as a pure swift framework bonus. 

## Features
- Implemented an efficient NDArray class [Tensor](http://serrano-lib.org/docs/v0.1.0-alpha/api/Classes/Tensor.html) which supports:
  - CPU calculation with [BLAS](https://developer.apple.com/documentation/accelerate/blas)/[vecLib](https://developer.apple.com/documentation/accelerate/veclib)/[vDSP](https://developer.apple.com/documentation/accelerate/vdsp) for better performance 
  - GPU calculation on [no-copy MTLBuffer](https://developer.apple.com/documentation/metal/mtldevice/1433382-makebuffer) for memory saving
- Including common [operators](http://serrano-lib.org/docs/v0.1.0-alpha/api/Classes.html) for constructing various computation graphs and it is easy to [implement custom operators]().
- A python package [serrano-tools](https://github.com/pcpLiu/serrano-tools) is here to help convert your existing models (Under development)
- No third-party library dependent. Compatible from iOS 10.

## Install

#### Via CocoaPods
Install the latest version:
```
pod 'Serrano', :git => 'https://github.com/pcpLiu/Serrano.git'
```


#### Manually integrate into your workspace/project

Download or clone Serrano and drag `serrano.xcodeproj` into your workspace or project.
Add `Serrano` into the `Target Dependencies` of your target.


## Docs
The APIs are hosted at [http://serrano-lib.org](http://serrano-lib.org/docs/v0.1.0-alpha/api/).

Currently, we are adding more guides.

## Questions && Issues
 :bangbang: Please __only open [bug]/[feature request] related issues__ in THIS repo and follow this [issue guide](). :bangbang: 

__For any general issue/discussion || framework support__, please go to [pcpLiu/SerranoExplore](https://github.com/pcpLiu/SerranoExplore) opening an issue. Also you can discuss on [Gitter](https://gitter.im/SerranoFramework/Lobby)


## macOSX
Serrano was developed as an iOS framework. However, the framework could be added and used in Cocoa applications (macOS App) without effort. 

## Contribution
Contribution are wanted! And please read the [Contributing Guide]() before making a PR.

## License
Serrano is liscensed under [MIT](https://github.com/pcpLiu/serrano/blob/master/LICENSE). Copyright (c) 2017, Zhonghao (Tim) Liu.


## Acknowledgement
Serrano are inspired and influenced by these open source projects:

- [MXNET](https://github.com/apache/incubator-mxnet)
- [Keras](https://github.com/fchollet/keras)
- [TensorFlow](https://www.tensorflow.org/)
- [Caffe](https://github.com/BVLC/caffe)
