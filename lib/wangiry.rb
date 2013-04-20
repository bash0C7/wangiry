require 'twilio-ruby'
require "wangiry/version"

module Wangiry
  def self.call account_sid, auth_token, from_number, to_number, url, calling_time
    calling_time ||= 8

    client = Twilio::REST::Client.new(account_sid, auth_token)
    account = client.account
    call = account.calls.create({:from => from_number, :to => to_number, :url => url})
    #cancel if over calling_time
    call.tap {|t| sleep(calling_time)}.cancel
  end
end
