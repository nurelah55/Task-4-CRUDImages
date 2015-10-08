class ImagesController < ApplicationController
  def index
    @images =Image.all
  end

  def new
    @image = Image.new
  end

  def edit
  end
  
  def create
    @image = Image.new(image_params)
    if @image.save
      flash[:notice] = "Success Add Record"
      redirect_to action: 'index'
    else
      flash[:error] = "data not valid"
      render 'new'
    end
  end
  def edit
    @image = Image.find_by_id(params[:id])
    
  end
  
  def update
    @image = Image.find_by_id(params[:id])
    
    if @image.update(image_params)

      flash[:notice] = "Success Add Records"
      redirect_to action: 'index'
    else
      flash[:error] = "data not valid"
      render 'edit'
    end
  end
  
  def destroy
    @image = Image.find_by_id(params[:id])
    if @image.destroy
      flash[:notice] = "Success Delete a Record"
      redirect_to action: 'index'
      #redirect_to articles_url
    else
      flash[:notice] = "fails delete a record"
      redirect_to action: 'index'
    end
  end

  private
  
  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.
  
  def image_params
    params.require(:image).permit(:title, :avatar)
  end

end
