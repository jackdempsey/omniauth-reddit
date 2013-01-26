A quick note: I stopped working on this before everything was all peachy and working perfectly. There's a lot of good code in place, but needs some loving, so "buyer" be ware :-)

Reddit OAuth2 Strategy for OmniAuth 1.0.

Supports the OAuth 2.0 server-side and client-side flows. Read the Reddit docs for more details: http://www.reddit.com/dev/api/oauth

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-reddit'
```

Then `bundle install`.

## Usage

`OmniAuth::Strategies::Reddit` is simply a Rack middleware. Read the OmniAuth 1.0 docs for detailed instructions: https://github.com/intridea/omniauth.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :reddit, ENV['REDDIT_KEY'], ENV['REDDIT_SECRET']
end
```

## Configuring

* `scope`: A comma-separated list of permissions you want to request from the user. See the Reddit docs for a full list of available
permissions: http://www.reddit.com/dev/api/oauth

## License

Copyright (c) 2012 by Jack Dempsey

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
