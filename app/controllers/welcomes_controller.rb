class WelcomesController < ApplicationController
  def index
    require 'net/http'
    workouts = Net::HTTP.get(URI('https://www.kimonolabs.com/api/7unf33cw?apikey=IqRSjYM5lNhzd0FnxGH5VIRWFZzR789y'))
    binding.pry
  end
end
