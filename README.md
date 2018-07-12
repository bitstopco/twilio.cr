# twilio.cr - A library to access the Twilio API


## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  twilio-cr:
    github: arubinofaux/twilio.cr
```

In your terminal run:

```bash
shards install
```

## Usage

After the installation, you can use twilio-cr by creating a client object:

```crystal
require "twilio"

account_sid      = "your_account_sid"
auth_token       = "your_auth_token"

client = Twilio::Client.new(account_sid, auth_token)
```

All the necessary keys can be [viewed in the dashboard](https://www.twilio.com/console).

**Send and SMS**

```crystal
client.messages_create("+16105557069", "+14159341234", "Hey there!")
```

## Contributing

1. Fork it (<https://github.com/arubinofaux/twilio-cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [arubinofaux](https://github.com/arubinofaux) arubinofaux - creator, maintainer
