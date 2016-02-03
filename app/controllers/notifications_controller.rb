require "twilio-ruby"

class NotificationsController < ApplicationController
  def index
  end

  account_sid = 'ACa589dc723c5a8ae803b87ca59f2984c3' 
  auth_token = '45933564ef7439c447290bec6b71e4b6'

  @client = Twilio::REST::Client.new account_sid, auth_token 

  @client.account.messages.create({
	:from => '+17083156090',  
	:to => '+16306704312',
	:body => 'I made an app that works!',  
})
  
end
