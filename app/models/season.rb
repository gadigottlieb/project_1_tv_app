class Season < ActiveRecord::Base
    belongs_to :show, dependent: :destroy
end
