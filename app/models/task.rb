class Task < ApplicationRecord
  enum priority: { low: 2, medium: 1, high: 0 }

  def self.select_options_by_priority
    priorities.keys.map{|x| [I18n.t("tasks.priority.#{x}"), x]}
  end
  
  def self.task_list(sort_task)
    if sort_task == "created_at" || sort_task.blank?
      order(created_at: :desc)
    else sort_task == "end_at"
      order(end_at: :asc)
    end
  end

  #validations
  validates :title, :description, presence: true
end
