class ExperienceScreen < Testmunk::Android::Screen

  view :title, {id:'backgroundNatGeoTV'}
  view :experienceText, {id:'textView'}
  button :natchannel, {marked:'natgeochanButton'}
  button :natgeo, {marked:'natgeowildButton'}
  # button :channelButton, {id:'channelButton'}

  def traits
    [title, experienceText]
  end

  def experience_state_true
    element_exists("* id:'backgroundNatGeoTV'")
  end

end