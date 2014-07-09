class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.string :image_url
      t.date :first_air_date
      t.text :plot
      t.string :genre
      t.string :network
    end
  end
end
