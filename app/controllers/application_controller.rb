class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :shop_image

  protected

    def shop_image
      @photos = Instagram.user_recent_media("813985406", {:count => 1})
    end
end
