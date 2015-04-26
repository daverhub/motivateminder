class SendTextController < ApplicationController
  def index
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
      :body => "This is an message. It gets sent to #{917}"
    )
  end
end

@client.account.messages.create(
  :from => '+17182859035',
  :to => '+1917',
  :body =>'Hey there!'
)
