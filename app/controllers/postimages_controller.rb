class PostimagesController < ApplicationController
  
  
  def new
    @postimage = Postimage.new
  end
  
  def create
    @postimage = Postimage.new(postimage_params)
    @postimage.user_id = current_user.id
    @postimage.save
    redirect_to postimages_path
  end

  def index
    @postimages = Postimage.all
  end

  def show
    @postimage = Postimage.find(params[:id])
  end
  
  def destroy
  end
  
    # 投稿データのストロングパラメータ
  private

  def postimage_params
    params.require(:postimage).permit(:shop_name, :image, :caption)
  end
  
end
