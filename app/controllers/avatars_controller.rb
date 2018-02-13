class AvatarsController < ApplicationController
  # before_action check_if_owner only: :order
  # before_action check_has_coins only: :order

  before_action :check_if_logged_in, only: [:new, :create, :edit, :update, :destroy, :order]

  # Create
  def new

    @avatar = Avatar.new

  end

  def create

    avatar = Avatar.create avatar_params

    avatar.user = @current_user

    if avatar.save
      redirect_to avatar
    else
      # avatar could not be saved
    flash[:errors] = avatar.errors.full_messages
      redirect_to new_avatar_path
    end

  end

  # Read
  def home
    @avatars = Avatar.all

  end

  # search
  def search
    @results = Avatar.where('name LIKE ?', "%#{params[:query]}%")
  end


  # orde
  # def order
  #
  #   avatar = Avatar.find params[:id]
  #   seller = User.find_by id:avatar.user_id
  #
  #   if !avatar.is_sale? flash[:errors] = "This item is not for sale."
  #       # redirect_to request.referrer
  #
  #     raise 'hell'
  #   elsif avatar.is_owner?( @current_user ) flash[:errors] = "You already own this item."
  #         # redirect_to request.referrer
  #
  #   else @current_user.can_buy?( avatar ) @current_user.update coins: @current_user.coins - avatar.value && seller.update coins: seller.coins + avatar.value && avatar.update user_id: @current_user.id
  #     redirect_to avatar_path
  #   end
  #
  # end


  # List
  def index
      @avatars = Avatar.all
  end

  # API


  def show
    @avatar = Avatar.find params[:id]
    # raise 'hell'




  end

  # edit/update
  def edit

      @avatar = Avatar.find params[:id]

  end

  def update

        avatar = Avatar.find params[:id]

        avatar.update avatar_params

        redirect_to avatar_path
  end

  # Delete
  def destroy

    Avatar.destroy params[:id]

    redirect_to avatars_path

  end


  def listing

  end

  def price

  end

  def description

  end


  # your_profit_path
  def your_profit

    @profits = Avatar.sum(value)

  end

  private

  def avatar_params
    params.require(:avatar).permit(:src,
      :name, :description, :value, :user_id, :is_sale)

  end

end
