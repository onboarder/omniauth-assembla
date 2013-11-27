# OmniAuth Assembla

This gem is the unofficial Assembla strategy for OmniAuth.

## Basic Usage

```
use OmniAuth::Builder do
  provider :assembla, ENV['ASSEMBLA_APP_ID'], ENV['ASSEMBLA_APP_SECRET']
end
```

## Supported Flows

Supports the web services flow as described by the [Authentication](http://api-doc.assembla.com/content/authentication.html#web_service) documentation at Assembla. This is the typical 3-step authentication flow for web applications.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
