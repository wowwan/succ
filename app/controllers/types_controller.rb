class TypesController < ApplicationController
def index
   @types = Type.paginate(per_page: 10, page: params[:page])
end

def new
    @type = Type.new
end

def create
   @type = Type.create(type_params)
   render "new"
end

private
  def type_params
    params.require(:type).permit(:name, :desc)
  end
end

