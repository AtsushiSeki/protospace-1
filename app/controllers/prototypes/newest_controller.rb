class Prototypes::NewestController < ApplicationController
  def index
    @prototypes = Prototype.includes(:prototype_images).order('created_at DESC').page(params[:page]).per(4)
  end
end
