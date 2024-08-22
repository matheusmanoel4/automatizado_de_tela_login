require 'site_prism'

class HomePage < SitePrism::Page
  set_url '/home'

  element :username, :xpath, '//*[@id="search"]'
  # Adicione outros elementos e métodos conforme necessário
  element :navBarhome, id: 'home'
  element :myicon, id: 'myicon' 
end

def checkloginsucefull
    expect(username.text).to eql 'home'
    expect(navBarhome.text).to eql 'home'
    expect(myicon.text).to eql 'home'
end