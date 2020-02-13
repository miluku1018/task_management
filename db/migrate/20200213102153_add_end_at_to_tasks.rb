class AddEndAtToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :end_at, :date
  end
end
