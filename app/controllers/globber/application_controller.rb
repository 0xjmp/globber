module Globber
  class ApplicationController < ActionController::Base

    def index
      @result = RouterService.call(params)
      render json: @result.display
    end

  end
end
