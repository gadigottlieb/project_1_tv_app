class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.references :user
      t.references :show
      t.text       :comment
      t.integer    :rating
    end
  end
end
