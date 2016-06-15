class MenuScreen < Testmunk::Android::Screen

  view :menu_overlay, {tag:'menu_background_overlay'}
  button :settings, {id:'settingsButton'}
  button :favorites, {id:'favoritesButton'}
  view :menu_logo, {id:'menuLogo'}
  button :home, {id:'homeButton'}
  button :schedule, {id:'scheduleButton'}
  button :shows, {id:'showsButton'}

  def traits
    menu_overlay
  end

end