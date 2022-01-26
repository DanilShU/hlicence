class RemoveType < ActiveRecord::Migration[7.0]
  def change
    remove_column :hlicences, :type, :string
  end
end
