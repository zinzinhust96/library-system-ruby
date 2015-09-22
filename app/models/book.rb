class Book < ActiveRecord::Base

  belongs_to :user
  validates :title,
            :presence => {:message => "Please provide title of the book"}
  validates :isbn,
            :presence => {:message => "Please provide ISBN number of the book"}
  validates :description,
            :presence => {:message => "Please provide description of the book"}
end
