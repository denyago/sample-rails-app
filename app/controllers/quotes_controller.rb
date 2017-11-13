class QuotesController < ApplicationController
  def show
    render plain: "Quote of the day:\n" + Quote.random
  end
end
