
# features/support/page.initialize.rb
Dir[File.join(File.dirname(__FILE__), '..', 'pages', '*.rb')].each { |file| require file }

module PageInitialize
  def login
    @login ||= LoginPage.new
  end

  def home
    @home ||= HomePage.new
  end
end