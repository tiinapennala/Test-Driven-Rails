require 'rails_helper'

RSpec.describe Todo, type: :model do
  context "#compeleted?" do
    it "returns true if compeleted_at is set" do
      todo = Todo.new(completed_at: DateTime.current)

      expect(todo).to be_completed
    end

    it "returns false if completed_at is nil" do
      todo = Todo.new(completed_at: nil)

      expect(todo).not_to be_completed
    end
  end

  context "#complete!" do
    it "update completed_at" do
      todo = Todo.create!(completed_at: nil)
      todo.complete!

      todo.reload

      expect(todo).to be_completed
    end
  end
end
