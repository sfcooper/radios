class AddSlugToRadios < ActiveRecord::Migration[6.0]
  def change
    add_column :radios, :slug, :string
  end
end
