class CreateRadios < ActiveRecord::Migration[6.0]
  def change
    create_table :radios do |t|
      t.string :name
      t.text :desc
      t.integer :price

      t.timestamps
    end
  end
end
