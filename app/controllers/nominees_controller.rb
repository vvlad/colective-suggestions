class NomineesController < ApplicationController
  def show
  end

  def new

  end

  def create

  end

  def index
    @nominees = Nomination.all.order('votes DESC, id DESC').page(params[:page]).per(10)
  end

  private
  def resourse_params

  end
end
