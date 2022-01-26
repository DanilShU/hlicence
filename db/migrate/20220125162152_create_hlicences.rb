class CreateHlicences < ActiveRecord::Migration[7.0]
  def change
    create_table :hlicences do |t|
      t.string :department
      t.string :name
      t.string :gender
      t.string :class
      t.string :type
      t.boolean :approve

      t.timestamps
    end
  end
end
