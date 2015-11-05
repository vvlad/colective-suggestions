class NomineesController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]

  def show
  end

  def new
    @user = current_user.clone
    2.times { @user.nominations.build }
  end

  def create
  end

  def index
    @nominees = Nomination.all.order('votes DESC, id DESC').page(params[:page]).per(10)
  end

  private

  def resource_params
    params.require(:nomination).permit(nominations_attributes: [:nominee, :specialty])
  end
end
