class Show < ActiveRecord::Base
  has_and_belongs_to_many :actors
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
  has_many :seasons

  validates_presence_of :title, :genre, :network
end
