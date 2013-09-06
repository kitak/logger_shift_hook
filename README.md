# LoggerShiftHook

This gem is logger library extension.
When shifting a log, do hook.

## Installation

Add this line to your application's Gemfile:

    gem 'logger_shift_hook'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install logger_shift_hook

## Usage

```ruby
require 'logger'
require 'logger_shift_hook'

# register with initializing
log = Logger.new('hoge.log', 'daily') do
  # do something
end

log.shift_hook do
  # do something
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
