class RemoveDetailsFromTasks < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :start_date, :date
    remove_column :tasks, :end_date, :date
    remove_column :tasks, :priority, :string
  end
end
