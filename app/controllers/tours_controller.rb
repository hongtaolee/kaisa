# encoding: utf-8

class ToursController < ApplicationController
  def show
    @tour = Tour.find(params[:id])
    @tour_category = @tour.tour_category
  end
end
