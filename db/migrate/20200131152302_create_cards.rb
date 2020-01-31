class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :title
      t.text :description
      t.string :priority
      t.date :start_date
      t.date :due_date
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
