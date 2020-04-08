class CompletionsController < ApplicationController
  def create
    current_user.todos.find(params[:todo_id]).update(completed_at: DateTime.current)
    redirect_to todos_path
  end
end
