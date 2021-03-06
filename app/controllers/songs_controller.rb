class SongsController < ApplicationController
  before_action :authenticate_user!, only: [
    :new, :edit, :delete
  ]

  def delete
    @song = Song.find(params[:id])
  end

  def destroy
    @song = Song.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      redirect_to @song
    else
      render 'edit'
    end
  end

  def new
    @song = Song.new
    1.times { @song.samples.build }
    1.times { @song.elements.build }
  end

  def create
    @song = Song.new(song_params)
 
    if @song.save
      render('index')
    else
      render('new')
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  def index
    if params[:search]
      @songs = Song.search(params[:search]).order("created_at DESC")
    else
      @songs = Song.all.order('created_at DESC')
    end
  end

  def search
    if params[:search]
      @songs = Song.search(params[:search]).order("created_at DESC")
    else
      @songs = Song.all.order('created_at DESC')
    end
  end

  private
  def song_params
    params.require(:song).permit(:title, :artist, :features, :producers, :album, :url, :image, :description, samples_attributes: [:id, :starting_time, :starting_time_i, :other_times, :artist, :url, :description, :song_id], elements_attributes: [:id, :starting_time, :starting_time_i, :other_times, :source, :url, :description, :song_id])
  end
end
