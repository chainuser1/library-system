class User < ActiveRecord::Base
  REGEX_EMAIL_PATTERN=/([a-z0-9_]+|[a-z0-9_]+\.[a-z0-9_]+)@(([a-z0-9]|[a-z0-9]+\.[a-z0-9]+)+\.([a-z]{2,4}))/i
  validates :email ,presence:true,
                   format: {with: REGEX_EMAIL_PATTERN, message: ' is invalid!'}

  has_secure_password
  validates :password, presence:true,
                       length: {minimum: 8, maximum: 32 , message: ' must be between 8-32 characters.'}
end
