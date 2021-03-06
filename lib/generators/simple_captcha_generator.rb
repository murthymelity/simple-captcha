require 'rails/generators'

class SimpleCaptchaGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
                          
  def self.source_root
    @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates/'))
  end
  
  def create_partial
    template "partial.erb", File.join('app/views', 'simple_captcha', "_simple_captcha.erb")
  end

end
