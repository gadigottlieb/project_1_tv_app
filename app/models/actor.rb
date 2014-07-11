class Actor < ActiveRecord::Base
  has_and_belongs_to_many :shows

  validates_presence_of :name, :character, :profile_path
end
