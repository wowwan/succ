class TypesController < ApplicationController
def index
   @types = Type.all
end

def new
    @type = Type.new
end

def create
   @type = Type.create(type_params)
   render "index"
end

private
  def type_params
    params.require(:type).permit(:name, :desc)
  end
end
