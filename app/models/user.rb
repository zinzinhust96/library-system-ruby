class User < ActiveRecord::Base
  has_many :books
  attr_accessor :name, :email
  before_save { self.email = email.downcase } 
  validates :name, 
            :presence => {:message => "Please enter name"}
  validates :email,
            :presence => {:message => "Please enter email"},
            :uniqueness => {:message => "Email already exists"},
            :email_format => {:message => "Email address is not valid"} 
  validates :password,
            :length => {:minimum => 8 },
            :presence => {:message => "Please enter password"}
  has_secure_password 
end
