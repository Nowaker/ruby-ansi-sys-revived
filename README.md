# ansi-sys-revived

[![Gem Version](https://img.shields.io/gem/v/ansi-sys-revived.svg)](https://rubygems.org/gems/ansi-sys-revived)
[![GPA](https://img.shields.io/codeclimate/github/Nowaker/ruby-ansi-sys-revived.svg)](https://codeclimate.com/github/Nowaker/ruby-ansi-sys-revived)
[![Code coverage](https://img.shields.io/codeclimate/coverage/github/Nowaker/ruby-ansi-sys-revived.svg)](https://codeclimate.com/github/Nowaker/ruby-ansi-sys-revived)
[![Build status](https://img.shields.io/travis/Nowaker/ruby-ansi-sys-revived.svg)](https://travis-ci.org/Nowaker/ruby-ansi-sys-revived)
[![Dependcies status](http://img.shields.io/gemnasium/Nowaker/ruby-ansi-sys-revived.svg)](https://gemnasium.com/Nowaker/ruby-ansi-sys-revived)

ansi-sys-revived is a Ruby library to render texts with ANSI escape sequences.
Convert your colorful shell output to HTML code.

Original version, Ruby-ANSI.SYS, was developed on RubyForge. Original website is [ansi-sys.rubyforge.org](http://ansi-sys.rubyforge.org/).
[kazz187](https://github.com/kazz187/ansi-sys/) was the first to import the project to GitHub.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ansi-sys-revived'
```

Then execute:

```
$ bundle
```

Gem works on Ruby 1.9.3, 2.0 and 2.1. Use original [ansi-sys](https://rubygems.org/gems/ansi-sys) for Ruby 1.8.

## Usage

Show with the default ANSI colors:

```ruby
require 'ansisys'
terminal = AnsiSys::Terminal.new
terminal.echo("Hello \e[32mWorld\e[m")
terminal.render #=> HTML fragment
```

Or with brigher colors:

```ruby
require 'ansisys'
terminal.render(:html, 80, nil, AnsiSys::Screen.default_css_colors(false, true))
```

## Tests

You can run through spec files:

```ruby
$ bundle exec rake spec
```

## Contributing

1. [Fork it](https://github.com/Nowaker/ruby-ansi-sys-revived/fork)
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. [Create a pull request](https://github.com/Nowaker/ruby-ansi-sys-revived/compare/)
6. Include this text in the description: `I hereby license the submitted code under GNU GPL v3.`
7. Thanks!


## License

Copyright (c) 2014 StratusHost Damian Nowak

Licensed under GNU GPL v3. See LICENSE file.


Original copyright note:

> Ruby-ANSI.SYS Copyright (C) 2007 zunda <zunda at freeshell.org> unless otherwise stated.

> This program is free software. You can distribute/modify this
> program under the terms of the GNU LGPL, Lesser General Public
> License version 2.1.
