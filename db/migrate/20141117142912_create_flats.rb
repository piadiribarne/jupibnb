class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.string :city
      t.text :description
      t.references :user, index: true
      t.boolean :availability

      t.timestamps
    end
  end
end
