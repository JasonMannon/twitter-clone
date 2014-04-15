require 'spec_helper'

describe User do
  it 'sends a welcome email' do
    user = User.create(:email => "jay@gmail.com", :username => "jay", :password => "1", :password_confirmation => '1')
    expect(CustomerMailer).to receive(:send_welcome_message).with(user)
    user.save
  end
end
