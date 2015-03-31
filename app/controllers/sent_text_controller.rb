class SendTextController < ApplicationController
  def index
  end

  def send_text_message
    number_to_send_to = params[:number_to_send_to]

    twilio_sid = "AC10a2c0ac48c47e50fab85155aa1e8170"
    twilio_token = "5b0f829bed4f94b125995f4f0d54e79b"
    twilio_phone_number = "7182859035"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => "This is an message. It gets sent to #{9173997631}"
    )
  end
end
