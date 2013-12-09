class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    respond_to do |format|
      format.html
    end
  end

  def show
    @movie = Movie.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @movie = Movie.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.new(params[:movie])

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @movie = Movie.find(params[:id])

    respond_to do |format|
      if @movie.update_attributes(params[:movie])
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    respond_to do |format|
      format.html { redirect_to movies_url }
    end
  end
end
