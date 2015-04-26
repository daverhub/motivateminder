require 'twilio-ruby'

class TwilioController < ApplicationController
  skip_before_action :verify_authenticity_token
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def voice
    response = Twilio::TwiML::Response.new do |r|
      r.Say 'Hey there. Congrats on integrating Twilio into your Rails 4 app.', :voice => 'alice'
         r.Play 'http://linode.rabasa.com/cantina.mp3'
    end

    render_twiml response
  end

  def send_text_message
    number_to_send_to = params[:number_to_send_to]
    twilio_sid = ENV['TWILIO_ACCOUNT']
    twilio_token = ENV['TWILIO_TOKEN']
    twilio_phone_number = "7182859035"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => "This is an message. It gets sent to #{9173997631}"
    )
  end
end
