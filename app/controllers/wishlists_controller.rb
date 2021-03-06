class WishlistsController < OpenReadController
  before_action :set_wishlist, only: [:show, :update, :destroy]

  # GET /wishlists
  def index
    # @wishlists = Wishlist.all

    @wishlists = current_user.wishlists.all

    render json: @wishlists
  end

  # GET /wishlists/1
  def show
    render json: @wishlist
  end

  # POST /wishlists
  def create
    @wishlist = current_user.wishlists.build(wishlist_params)
    if @wishlist.save
      render json: @wishlist, status: :created, location: @wishlist
    else
      render json: @wishlist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wishlists/1
  def update
    if @wishlist.update(wishlist_params)
      render json: @wishlist
    else
      render json: @wishlist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wishlists/1
  def destroy
    @wishlist.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wishlist
      @wishlist = current_user.wishlists.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wishlist_params
      params.require(:wishlist).permit(:wish_status, :user_id, :artist_id)
    end
end
