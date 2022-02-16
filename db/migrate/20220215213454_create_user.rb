class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :login, null: false
      t.string :password, null: false
      t.boolean :active, null: false
      t.string :email, null: false
      t.boolean :confirmed, null: false
      t.timestamps
    end
  end
end
