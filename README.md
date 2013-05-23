# Coderwall Ruby

[![Code Climate](https://codeclimate.com/github/garethrees/coderwall_ruby.png)](https://codeclimate.com/github/garethrees/coderwall_ruby)

Simple wrapper around [Coderwall's](http://coderwall.com) users API for a [Tech Talk](https://speakerdeck.com/gareth/hello-ruby) at [Box UK](http://boxuk.com).

For code as demoed see [d2eff31d07](https://github.com/garethrees/coderwall_ruby/commit/d2eff31d07c6aa95b7089fa7c17cc6a4b279aa44).

## Usage

```ruby
> me = CoderwallRuby::User.new('garethrees')
#=> Returns a Hash of data from the API
> me.username
#=> 'garethrees'
> me.location
#=> 'Cardiff, Wales UK'
# etc...
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
