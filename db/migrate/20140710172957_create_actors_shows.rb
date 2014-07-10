class CreateActorsShows < ActiveRecord::Migration
  def change
    create_table :actors_shows, id: false do |t|
      t.references :actor
      t.references :show
    end
  end
end
