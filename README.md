# Wangiry

call telephone and cancel after several seconds(say WAN GIRI in Japan)

## Installation

Add this line to your application's Gemfile:

    gem 'wangiry'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wangiry

### get Twilio account

http://kddi-web.twilio.jp/ (Japanese)

### write setting file

setting file(json file) save your favolite path!

````js
{
  "ACCOUNT_SID": "xxxx",
  "AUTH_TOKEN": "xxxx",
  "FROM_NUMBER": "+xxx",
  "TO_NUMBER": "+xxxx",
  "URL": "http://example.com",
  "CALLING_TIME": x
}
````

- Twilio's account info: ACCOUNT_SID, AUTH_TOKEN
- Twilio's telephone number: FROM_NUMBER
- call number: TO_NUMBER
- some URL(RECOMMEND: your website): URL
- calling time(sec): CALLING_TIME

## Usage

````sh
wangiry SETTING_FILE
````

ARGV.first: your setting file

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
