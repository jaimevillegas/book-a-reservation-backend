class GlampingController < ApplicationController
  skip_before_action :verify_authenticity_token, only: %i[destroy_glamping create]

  def index; end

  def list_glampings
    @glampings_name = Glamping.pluck(:id, :name, :glamping_type, :image)
    render json: @glampings_name
  end

  def list_glampings_details
    @item = Glamping.find_by(id: params[:id])
    render json: @item
  end

  def destroy_glamping
    @item = Glamping.find_by(id: params[:id])
    @item.destroy

    # this line will send a 204 status code, which tells the browser that
    # the request was successful but there’s no content to return
    head :no_content
  end

  def create
    @glamping = Glamping.new(glamping_params)

    if @glamping.save
      render json: @glamping
    else
      render json: @glamping.errors.full_messages
    end
  end

  private

  def glamping_params
    params.require(:glamping).permit(:name, :glamping_type, :description, :image, :location, :daily_rate)
  end
end
