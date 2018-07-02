require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require "faker"
require "cpf_faker"


Capybara.configure do |config|

config.default_driver = :selenium_chrome
config.app_host = 'http://www.marabraz.com.br/'

end 

Capybara.default_max_wait_time = 10