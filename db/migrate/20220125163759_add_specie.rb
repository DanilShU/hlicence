class AddSpecie < ActiveRecord::Migration[7.0]
  def change
    add_column :hlicences, :specie, :string
  end
end
