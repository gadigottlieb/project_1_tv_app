class Show < ActiveRecord::Base
  has_and_belongs_to_many :actors 
  has_many :favorites
  has_many :users, through: :favorites

  validates_presence_of :title, :genre, :network
end
