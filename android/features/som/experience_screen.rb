class ExperienceScreen < Testmunk::Android::Screen

  view :title, {id:'backgroundNatGeoTV'}
  view :experienceText, {id:'textView'}
  button :natchannel, {marked:'natgeochanButton'}
  button :natgeo, {marked:'natgeowildButton'}

  def traits
    [title, experienceText]
  end

  def experience_state
    title
  end
end