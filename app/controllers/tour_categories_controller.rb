# encoding: utf-8

class TourCategoriesController < ApplicationController
  def show
    @tour_category = TourCategory.find(params[:id])
    @tours = @tour_category.tours
  end
end
