class TodosController < ApplicationController

    def index

    end
    def new
        @todo = Todo.new
    end
    

    def create
        @todo = Todo.new(todo_params)
        if @todo.save
            flash[:notice] = "¡Tarea agregada!"
            redirect_to root_path

        else            
            flash[:notice] = "Trata de nuevo, hubo un error."
            redirect_to root_path

        end
    end

    def show
    end


    def destroy
        @todo = Todo.find(params[:id])
        @todo.destroy
        redirect_to root_path
    end
    
    

    private
    def todo_params
        params.require(:todo).permit(:item)
    end
    

end
