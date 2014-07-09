class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_config
  Tmdb::Api.key('02bf83da8680170802ffbae8e4b6f5f4')

  def set_config
    configuration = Tmdb::Configuration.new
  end

end
