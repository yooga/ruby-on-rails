class Classified < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :price
  validates_presence_of :location
  validates_presence_of :description
  validates_presence_of :email
  
  belongs_to :category 
  belongs_to :user
end
