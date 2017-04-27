class FavoritesController < ApplicationController
  before_action :require_user_logged_in, only: [:favorites]  #add
  def create
    @micropost = Micropost.find_by(id: params[:micropost_id])    # @
    current_user.favorite(@micropost)
    flash[:success] = 'お気に入り登録しました'
    redirect_to current_user
  end

  def destroy
    @micropost = Micropost.find(id: params[:micropost_id])
    current_user.unfavorite(@micropost)
    flash[:success] = 'お気に入り解除しました'
    redirect_to current_user
  end
end
