# Hat tip http://brewhouse.io/blog/2014/04/30/gourmet-service-objects.html
module Service
  extend ActiveSupport::Concern

  included do
    def self.call(*args)
      new(*args).call
    end
  end
end
