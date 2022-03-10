class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    no
  end

  def form
    @model = :wizard
  end
end
