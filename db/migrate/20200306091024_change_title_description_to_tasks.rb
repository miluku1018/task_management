class ChangeTitleDescriptionToTasks < ActiveRecord::Migration[6.0]
  def up
    change_table :tasks do |t|
      t.change :title, :string, null: false
      t.change :description, :text, null: false
    end
  end

  def down
    change_table :tasks do |t|
      t.change :title, :string
      t.change :description, :text
    end
  end
end
