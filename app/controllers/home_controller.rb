class HomeController < ApplicationController
  def index
    @todos = Todo.all
    @latest_todos = Todo.order("viewed_at DESC").limit(5)
  end
  
  def view
    @todo = Todo.find(params[:id])
    
    @todo.update_attribute(:viewed_at, Time.now.utc)
  end
end
