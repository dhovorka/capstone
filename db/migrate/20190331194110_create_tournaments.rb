class CreateTournaments < ActiveRecord::Migration[5.2]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
