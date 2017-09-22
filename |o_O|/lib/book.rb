class Book < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :isbn
end
