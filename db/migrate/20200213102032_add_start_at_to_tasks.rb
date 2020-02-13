class AddStartAtToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :start_at, :date
  end
end
