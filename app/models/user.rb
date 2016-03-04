class User < ActiveRecord::Base
  self.primary_key='email'
  has_one :profile, class_name: 'Profile',primary_key: 'email',foreign_key: 'user_email'
  REGEX_EMAIL_PATTERN=/([a-z0-9_]|[a-z0-9_]+\.[a-z0-9_]+)@(([a-z0-9]|[a-z0-9]+\.[a-z0-9]+)+\.([a-z]{2,4}))/i
  validates :email ,presence:true,
                   format: {with: REGEX_EMAIL_PATTERN, message: ' is invalid!'},
                   uniqueness: true

  has_secure_password
  validates :password, presence:true,
                       length: {minimum: 8, maximum: 32 , message: ' must be between 8-32 characters.'}


end
