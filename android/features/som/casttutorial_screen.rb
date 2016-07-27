class CasttutorialScreen < Testmunk::Android::Screen

  text :welcome_cast_text, {marked:'Touch to cast videos to your TV'}
  button :cast_tut_close, {id:'showcase_button'}

  def traits
    welcome_cast_text
  end

  def cast_state_true
    element_exists("* id:'#{welcome_cast_text}'")
  end

end