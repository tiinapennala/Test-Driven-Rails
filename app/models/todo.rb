class Todo < ApplicationRecord
  def completed?
    completed_at?
  end

  def complete!
    self.update(completed_at: DateTime.current)
  end

  def mark_incomplete!
    self.update(completed_at: nil)
  end
end
