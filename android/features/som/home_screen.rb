class HomeScreen < Testmunk::Android::Screen

  button :channelButton, {id:'channelButton'}
  button :filterDropdown, {id:'dropdownSpinnerView'}
  button :menu, {id: 'menuButtonDefault'}
  text :destinationWild, {marked:'Destination Wild'}
  text :natGeoChannel, {marked:'I Am Rebel'}

  def home_state
    query("* id:'channelButton'")
  end

  def episode_title(title)
    view({marked:title})
  end
end