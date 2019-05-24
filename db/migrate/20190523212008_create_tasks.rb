class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :status
      t.belongs_to :list, foreign_key: true
      t.belongs_to :board, foreign_key: true

      t.timestamps
    end
  end
end
