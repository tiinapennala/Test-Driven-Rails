class CompletionsController < ApplicationController
  def create
    todo.update(completed_at: DateTime.current)
    redirect_to todos_path
  end

  private

  def todo
    @todo ||= current_user.todos.find(params[:todo_id])
  end
end
