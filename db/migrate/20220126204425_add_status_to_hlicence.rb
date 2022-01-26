class AddStatusToHlicence < ActiveRecord::Migration[7.0]
  def change
    add_column :hlicences, :status, :string
  end
end
