class Task < ApplicationRecord
  enum priority: { 低: 2, 中: 1, 高: 0 }
end
