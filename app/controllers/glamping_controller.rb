class GlampingController < ApplicationController
  def index; end

  def list_glampings
    @glampings_name = Glamping.pluck(:id, :name, :glamping_type, :image)
    render json: @glampings_name
  end

  def list_glampings_details
    @item = Glamping.find_by(id: params[:id])
    render json: @item
  end
end
