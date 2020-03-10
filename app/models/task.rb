class Task < ApplicationRecord
  enum priority: { low: 2, medium: 1, high: 0 }

  def self.select_options_by_priority
    priorities.keys.map{|x| [I18n.t("tasks.priority.#{x}"), x]}
  end
  
  #validations
  validates :title, :description, presence: true
end
