class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :priority
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
