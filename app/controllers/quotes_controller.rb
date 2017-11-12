class QuotesController < ApplicationController
  def show
    render plain: Quote.random
  end
end
