class NomineesController < ApplicationController
  def show
  end

  def new

  end

  def create

  end

  def index
    @nominees = Nomination.all
  end
end
