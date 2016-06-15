class VideoScreen < Testmunk::Android::Screen

  view :video_display, {id: 'video_player_container'}
  view :video_controls, {id:'video_controls'}
  view :seek_bar, {id: 'seek_bar'}
  view :temp_pass, {id: 'linearLayoutTemppassOverlayContainer'}
  view :temp_pass_text, {id:'textViewOverlayMainText'}
  view :progress_bar, {id:'video_progress_bar'}
  view :ad_display, {id:'ad_container'}
  button :play_pause, {id: 'play_pause'}
  button :closed_caption, {id: 'closed_caption'}
  button :SignInText, {id:'textViewOverlaySignInText'}

  def traits
    [ad_display]
  end

end