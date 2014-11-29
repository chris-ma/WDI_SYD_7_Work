class ArtistsController < ApplicationController
  # step 1 world talking to controller
  
 def index
   @artists = Artist.all
 end

  def show #step 6
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new #step 2 & 3 controller talking and receiving to model
  end

  def create  #step 5 once submit is hit, it will direct to create method
    @artist = Artist.create(artist_params) #create is with the artist_params so it will be able to access the private method
    redirect_to @artist #intraspection to artist/:id
  end

  def edit #similar to show
    @artist = Artist.find(params[:id])
  end

  def update #find and similar to create
    @artist = Artist.find(params[:id])
    @artist.update(artist_params) 

    redirect_to @artist 
  end


  

  private
      def artist_params
        params.require(:artist).permit(
        :first_name, 
        :last_name, 
        :nationality, 
        :date_of_birth, 
        :period, 
        :image
        )

      end
  



end
