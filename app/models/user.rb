class User < ActiveRecord::Base
  validates :name, presence => true, format => {:with => /[a-z]/}
  validates :email, presence => true, uniqueness => true, email_format: {message: "email id format is not valid"}
  validates :password, presence => true
end
