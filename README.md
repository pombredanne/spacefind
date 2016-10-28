[![Spacefind Logo](/images/spacefind-logo.png)](/images/spacefind-logo.png)

Spacefind is a command-line tool that helps find mischievous whitespace and
other critically-problematic characters in PHP source code files. It is not
intended to be a comprehensive code style checker or linting solution.

[![Build Status](https://img.shields.io/travis/t-richards/spacefind/master.svg)](https://travis-ci.org/t-richards/spacefind)
[![Gem Version](https://img.shields.io/gem/v/spacefind.svg)](https://rubygems.org/gems/spacefind)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/t-richards/spacefind/master/LICENSE)

## Use cases

`Warning: Cannot modify header information - headers already sent by ...`

The above PHP warning is relatively common, and has many potential causes. For example,
```c
// Leading whitespace
·<?php

// Trailing whitespace
?>·

// UTF-8 Byte Order Mark
<U+FEFF><?php
```

This tool is aimed at finding whitespace and stray-character-related issues like the ones described above.

## Installation

Install this gem manually:

```bash
$ gem install spacefind
```

## Usage

```bash
# Usage
$ spacefind [options]

# Check all .php files in the current directory and subdirectories
$ spacefind
Searching **/*.php for problems...
in test/fixtures/bad/0-trailing.php:
	SP0002: Trailing whitespace detected.
in test/fixtures/bad/1-leading.php:
	SP0001: Leading whitespace detected.
in test/fixtures/bad/2-bom.php:
	SP0003: UTF-8 byte-order mark detected.
Done.

# Get more detailed usage information
$ spacefind --help

```

## Contributing

1. Fork it ( https://github.com/t-richards/spacefind/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
