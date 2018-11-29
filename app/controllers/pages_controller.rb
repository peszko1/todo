class PagesController < ApplicationController
  before_action :authenticate_user!
  def homepage
    @user = current_user
  end

  def createTodo
    if Todo.create 
      flash[:notice] = 'success'
    else
      flash[:error] = 'error'
    end
  end

  def about
    asdf = 1
  end
end
