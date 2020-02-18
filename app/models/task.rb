class Task < ApplicationRecord
  enum priority: { low: 2, medium: 1, high: 0 }
end
