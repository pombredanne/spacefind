# Spacefind

[![Build Status](https://img.shields.io/travis/t-richards/spacefind/master.svg)](https://travis-ci.org/t-richards/spacefind)

Finds mischevious trailing whitespace after PHP closing tags.

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
# Usage:
$ spacefind <phpfile(s)>

# Check .php files in the current directory
$ spacefind *.php
May contain whitespace: foo.php

# Check .php files in the current directory and all subdirectories
$ find . -name "*.php" -exec spacefind "{}" \;
May contain whitespace: foo/bar.php
```

## Contributing

1. Fork it ( https://github.com/t-richards/spacefind/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
