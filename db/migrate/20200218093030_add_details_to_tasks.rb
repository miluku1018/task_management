class AddDetailsToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :start_at, :date
    add_column :tasks, :end_at, :date
    add_column :tasks, :priority, :integer
  end
end
