class GlampingController < ApplicationController
  def index; end

  def list_glampings
    @glampings_name = Glamping.pluck(:name, :glamping_type)
    render json: @glampings_name
  end

  def list_glampings_details
    @item = Glamping.find_by(id: params[:id])
    render json: @item
  end
end
