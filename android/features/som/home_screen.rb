class HomeScreen < Testmunk::Android::Screen

  button :channelButton, {id:'channelButton'}
  button :filterDropdown, {id:'dropdownSpinnerView'}
  button :menu, {id:'menuButtonDefault'}
  button :cast_button, {id:'media_route_button'}
  text :natGeoWild, {marked:'Nat Geo Wild'}
  text :natGeoChannel, {marked:'National Geographic Channel'}
  view :tv_provider_label, {marked:'TV Provider'}
  view :provider_banner, {id:'currentProviderBarLayout'}

  def home_state
    query("* id:'channelButton'")
  end

  def episode_title(title)
    view({marked:title})
  end

  def provider_traits
    [tv_provider_label, provider_banner]
  end
end