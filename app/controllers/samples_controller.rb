class SamplesController < ApplicationController
  before_action :authenticate_user!, only: [
    :new, :edit, :delete
  ]
  
  
  def delete
    @sample = Sample.find(params[:id])
  end

  def destroy
    @sample = Sample.find(params[:id])
  end

  def edit
    @sample = Sample.find(params[:id])
  end

  def update
    @sample = Sample.find(params[:id])
    if @sample.update(sample_params)
      redirect_to @sample
    else
      render 'edit'
    end
  end

  def new
    @sample = Sample.new
  end

  def create
    @sample = Sample.new(sample_params)
    if @sample.save
      redirect_to @sample
    else
      render('new')
    end
  end

  def show
    @sample = Sample.find(params[:id])
  end

  def index
    if params[:search]
      @samples = Sample.search(params[:search]).order("created_at DESC")
    else
      @samples = Sample.all.order('created_at DESC')
    end
  end

  private
  def sample_params
    params.require(:sample).permit(:starting_time, :starting_time_i, :other_times, :artist, :url, :description, :song_id)
  end
end
