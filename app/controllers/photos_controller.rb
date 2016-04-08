class PhotosController < ApplicationController

def new
 @photo = Photo.new
end

def create
 @photo = current_user.photos.new(photo_params)

 if @photo.save
   redirect_to photo_path(@photo)
 else
   render :new
 end
end

private

def photo_params
  params.require(:photo).permit(:file, :caption)
 end
end
