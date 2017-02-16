class HomeController < ApplicationController
  skip_before_action :authenticate_model!
  def index
  end
end
