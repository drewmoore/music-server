class TextsController < ApplicationController
  require 'twilio-ruby'

  def create
    # put your own credentials here
    account_sid = ENV['LOVERCRAFT_SERVER_TWILIO_ACCOUNT_SID']
    auth_token = ENV['LOVERCRAFT_SERVER_TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create({
      from: '+16152460478',
      to: params['From'],
      body: 'Got it.'
    })
  end

end
