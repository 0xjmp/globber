# Hat tip https://netguru.co/blog/service-objects-in-rails-will-help
class Error
  attr_reader :errors
  # Pass 1 string or array of strings
  def initialize(errors = nil)
    errors = [] unless errors
    @errors = [errors].flatten # handle array or string
  end

  def error_message
    error[0]
  end

  def success?
    false
  end

  def display
    return {
      success: false,
      errors: @errors
    }
  end
end
