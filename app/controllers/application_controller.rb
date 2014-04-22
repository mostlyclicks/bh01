class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :shop_image

  protected

    def shop_image
      @photos = Instagram.user_recent_media("363032975", {:count => 3}) #363032975 #813985406
    end
end
