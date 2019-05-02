class AddLongLatWebsiteImage < ActiveRecord::Migration[5.2]
  def change
    add_column :tournaments, :image, :string
    add_column :tournaments, :coordinates, :string
    add_column :tournaments, :website, :string
  end
end