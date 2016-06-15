class HomeScreen < Testmunk::Android::Screen

  button :channelButton, {id:'channelButton'}
  button :filterDropdown, {id:'dropdownSpinnerView'}
  button :menu, {id: 'menuButtonDefault'}
  text :destinationWild, {marked:'Destination Wild'}
  text :natGeoChannel, {marked:'False Bottom'}

  def home_state
    query("* id:'channelButton'")
  end

  def episode_title(title)
    view({marked:title})
  end
end