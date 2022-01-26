class RemoveClass < ActiveRecord::Migration[7.0]
  def change
    remove_column :hlicences, :class, :string
  end
end
