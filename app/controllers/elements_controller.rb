class ElementsController < ApplicationController
  before_action :authenticate_user!, only: [
    :new, :edit, :delete
  ]
  
  def delete
    @element = Element.find(params[:id])
  end

  def destroy
    @element = Element.find(params[:id])
  end

  def edit
    @element = Element.find(params[:id])
  end

  def update
    @element = Element.find(params[:id])
    if @element.update(element_params)
      redirect_to @element
    else
      render 'edit'
    end
  end

  def new
    @element = Element.new
  end

  def create
    @element = Element.new(element_params)
    if @element.save
      redirect_to(:action => 'show', :element_id => @element.id)
    else
      render('new')
    end
  end

  def show
    @element = Element.find(params[:id])
  end

  def index
    if params[:search]
      @elements = Element.search(params[:search]).order("created_at DESC")
    else
      @elements = Element.all.order('created_at DESC')
    end
  end

  private
  def element_params
    params.require(:element).permit(:time, :source, :url, :description, :song_id)
  end
end
