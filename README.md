# README

[![Build Status](https://travis-ci.org/watsy0007/putong.svg?branch=develop)](https://travis-ci.org/watsy0007/putong)

[![codecov](https://codecov.io/gh/watsy0007/putong/branch/master/graph/badge.svg)](https://codecov.io/gh/watsy0007/putong)


## development

### step1

install rvm
install ruby 2.3.1
install rails

### step2

```
bundle install
rails db:create
rails db:structure:load
rails db:seed
```

### step3
```
rails s -b 0.0.0.0
```
