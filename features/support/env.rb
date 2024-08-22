# features/support/env.rb
require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require_relative 'page.initialize'  # Certifique-se de que o nome do arquivo está correto

# Configuração do Capybara
Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://www.linkedin.com'
end

# Inclua o módulo PageInitialize no contexto do Cucumber
World(PageInitialize)
