class SettingsScreen < Testmunk::Android::Screen

  view :page_title, {marked:'Settings'}
  button :menu_back, {id:'menuButtonBack'}
  button :reset_pass_full, {id:'tempPassButton'}
  button :reset_pass_5min, {id:'tempPassButton5'}
  button :provider_signin, {id:'mvpdSignInButton'}
  button :terms_of_use, {id:'termsOfUseButton'}
  button :privacy_policy, {id:'privacyPolicyButton'}
  button :support, {id:'supportButton'}
  button :cellular_toggle, {id:'toggleButton'}
  button :about, {id:'aboutTheAppButton'}

  def traits
    page_title
  end

end