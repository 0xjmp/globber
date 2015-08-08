require 'rails/generators'

module Globber
  class InstallGenerator < Rails::Generators::Base
    desc "Setup application for use with Globber"

    # Commandline options can be defined here using Thor-like options:
    class_option :install, :type => :boolean, :default => false, :desc => "Install Globber"

    # I can later access that option using:
    # options[:my_opt]

    def generate_initializer_file
      create_file 'config/initializers/globber.rb', "Globber.configure do |config|\n  config.base_uri = ''\nend"
    end

    def mount_engine
      mount_line = 'mount Globber::Engine => "/"'
      line = 'routes.draw do'
      gsub_file 'config/routes.rb', /(#{Regexp.escape(line)})/mi do |match|
        "#{match}\n  #{mount_line}\n"
      end
    end

  end
end