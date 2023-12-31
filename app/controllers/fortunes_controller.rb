# frozen_string_literal: true

class FortunesController < ApplicationController
  def index
    @fortunes = Fortune.all
  end

  def new
    @fortune = Fortune.new
  end

  def create
    @fortune = Fortune.new
    @fortune.text = params[:fortune][:text]
    @fortune.save!

    redirect_to @fortune
  end

  def edit
    @fortune = Fortune.find(params[:id])
  end

  def update
    @fortune = Fortune.find(params[:id])
    @fortune.text = params[:fortune][:text]
    @fortune.save!
    redirect_to @fortune
  end

  def show
    @fortune = Fortune.find(params[:id])
  end

  def fortune_of_the_day
    @fortune = if Fortune.count.zero?
                 Fortune.new("Nothing to display yet.")
               else
                 Fortune.find(Fortune.pluck(:id).sample)
               end

    render 'show'
  end
end
