class User < ActiveRecord::Base
  has_many :books
  before_save { self.email = email.downcase } 
  validates :name, 
            :presence => true
  validates :email,
            :presence => true,
            :uniqueness => {:message => "Email already exists"},
            :email_format => {:message => "Email address is not valid"}
  validates :password,
            :length => {:minimum => 8 },
            :presence => {:message => "Please enter password"}
  has_secure_password
end
