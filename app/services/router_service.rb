require 'httparty'
require 'virtus'

class RouterService
  include Service
  include Virtus.model(:strict => true)

  attribute :route, String

  def call
    response = Remote.get(route)
    unless response.body.length == 0
      return Success.new(response: response)
    else
      return Error.new([
        {
          status: response.code,
          message: response.message
        }
      ])
    end
  end

end