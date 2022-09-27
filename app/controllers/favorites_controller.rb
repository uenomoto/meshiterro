class FavoritesController < ApplicationController
  
  def create
    postimage = Postimage.find(params[:postimage_id])
    favorite = current_user.favorites.new(postimage_id: postimage.id)
    favorite.save
    redirect_to postimage_path(postimage)
  end
  
  def destroy
  postimage = Postimage.find(params[:postimage_id])
  favorite = current_user.favorites.find_by(postimage_id: postimage.id)
  favorite.destroy  
  redirect_to postimage_path(postimage) 
  end
  
end
