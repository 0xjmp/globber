require 'rails/all'

require 'globber/version'
require 'globber/configuration'

module Globber
  class Engine < ::Rails::Engine
    isolate_namespace Globber
  end
end
