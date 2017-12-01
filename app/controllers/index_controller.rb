class IndexController < ApplicationController

  before_action :authenticate_user!

  def menu
  end
end
