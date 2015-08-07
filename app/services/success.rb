# Hat tip https://netguru.co/blog/service-objects-in-rails-will-help
class Success
  attr_reader :data
  def initialize(data)
    @data = data
  end

  def success?
    true
  end

  def display
    @data
  end
end
