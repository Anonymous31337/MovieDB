class MoviesController < ApplicationController
#  http_basic_authenticate_with name: "Cedric-Timethy", password: "AWD", except: [:index, :show]

  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  before_action :set_actors, only: [:show, :edit, :update, :destroy]

  PAGE_SIZE = 2
  # GET /movies
  # GET /movies.json
  def index
        @page = (params[:page] || 0).to_i

        if params[:keywords].present?
          @keywords = params[:keywords]
          movie_search_term = MovieSearchTerm.new(@keywords)
          @movies = Movie.where(movie_search_term.where_clause, movie_search_term.where_args).order(movie_search_term.order).offset(PAGE_SIZE * @page).limit(PAGE_SIZE)
          @pageMax = ((Movie.where(movie_search_term.where_clause, movie_search_term.where_args).count)/PAGE_SIZE).to_i
        else
          @movies = Movie.all.offset(PAGE_SIZE * @page).limit(PAGE_SIZE)
          @pageMax = ((Movie.count)/PAGE_SIZE).to_i
        end

    #@movies = if params[:term]
    #            Movie.where('name LIKE ?', "%#{params[:term]}%")
    #          else
    #            Movie.all
    #          end

    #@movies_with_actors = @movies.map{|movie|[movie, movie.actors]}
    #@actors = Actor.all

    #if actor_id = params[:actor]
    #  @actor = Actor.find(actor_id)
    #  @movies = @actor.movies
    #else
    #  @movies = Movie.all
    #end

  end

  # GET /movies/1
  # GET /movies/1.json
  def show
  end

  # GET /movies/new
  def new
    @movie = Movie.new
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  # POST /movies.json
  def create
    #@movie = Movie.find(params[:movie_id])
    @movie = Movie.new(movie_params)
    #@movie.actors = Actor.s_to_actors(s_params[:actors])

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)

        @movie.actors = Actor.s_to_actors(params[:actors])
        @movie.save

        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  def set_actors
    @actors_all = Actor.all_s
    @actors = @movie.actors
    @actors_s = Actor.actors_to_s(@actors)
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :originaltitle, :releaseyear, :cover, :length, :ageres, :synopsis)
    end
end
