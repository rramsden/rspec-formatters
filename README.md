# Rspec Formatters

A collection of useful RSpec 3 formatters

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-formatters'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-formatters

## Usage

### VimQuickfix Formatter

The VimQuickfix Formatter creates formatted error output which the vim quickfix
window can parse

```
rspec \
--require=rspec-formatters --format=VimQuickfix --out=tmp/quickfix.out \
--format=progress
```

You can open the vim quickfix window using

```
:cg tmp/quickfix.out
:copen
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rspec-formatters/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
