class HlicenceAddUserId < ActiveRecord::Migration[7.0]
  def change
    add_column :hlicences, :user_id, :integer
  end
end
