class WelcomeController < ApplicationController
  def index
    @todo = Todo.all
  end

end
