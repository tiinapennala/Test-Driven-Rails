class Todo < ApplicationRecord
  def completed?
    completed_at?
  end

  def complete!
    self.update(completed_at: DateTime.current)
  end
end
