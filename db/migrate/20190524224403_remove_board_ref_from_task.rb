class RemoveBoardRefFromTask < ActiveRecord::Migration[5.2]
  def change
    remove_reference :tasks, :board, foreign_key: true 
  end
end
