class User < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :email
  has_many :tweets
  after_create :send_welcome_message
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "50x50>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def send_welcome_message
    CustomerMailer.signup_confirmation(self).deliver
  end
end
