class AddPictureToFlats < ActiveRecord::Migration
  def change
    add_column :flats, :picture, :string
  end
end
