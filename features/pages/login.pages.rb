# features/pages/login.pages.rb
require 'site_prism'

class LoginPage < SitePrism::Page
  set_url '/login'

  element :username_field, '#username'
  element :password_field, '#password'
  element :login_button, :xpath, '//*[@id="organic-div"]/form/div[3]/button'

  def userLogin (email, password)
    username_field.set (email)
    password_field.set (password)  
    login_button.click
  end
end