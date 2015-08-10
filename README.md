[![Spacefind Logo](/images/spacefind-logo.png)](/images/spacefind-logo.png)

Spacefind is a command-line tool that helps find mischievous trailing whitespace after PHP closing tags.

[![Build Status](https://img.shields.io/travis/t-richards/spacefind/master.svg)](https://travis-ci.org/t-richards/spacefind)
[![Gem Version](https://img.shields.io/gem/v/spacefind.svg)](https://rubygems.org/gems/spacefind)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/t-richards/spacefind/master/LICENSE)

## Installation

Install this gem manually:

```bash
$ gem install spacefind
```

...or you can add this line to your application's Gemfile:

```ruby
gem 'spacefind'
```

And then execute:

```bash
$ bundle
```

## Usage

```bash
# Usage
$ spacefind [options]

# Check all .php files in the current directory and subdirectories
$ spacefind
May contain whitespace: foo.php
May contain whitespace: foo/bar.php

# Get more detailed usage information
$ spacefind --help

```

## Contributing

1. Fork it ( https://github.com/t-richards/spacefind/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
