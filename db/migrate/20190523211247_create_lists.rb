class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :list_name
      t.string :type
      t.belongs_to :board, foreign_key: true

      t.timestamps
    end
  end
end
