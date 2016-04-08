class PhotosController < ApplicationController

def new
 @photo = Photo.new
end

def create
 current_user.photos.new(photo_params)
end

private

def photo_params
  params.require(:photo).permit(:file, :caption)
 end
end
