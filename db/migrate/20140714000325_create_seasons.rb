class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.integer :season_number
      t.string :air_date
      t.string :poster_path
      t.references :show
    end
  end
end
