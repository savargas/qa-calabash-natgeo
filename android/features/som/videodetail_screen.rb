class VideodetailScreen < Testmunk::Android::Screen

  view :video_page_title, {marked:'Videos'}
  text :episode_title, {id:'headline'}
  text :series_title, {id:'showNameTextView'}
  text :duration, {id:'durationTextView'}
  text :description, {id:'descriptionTextView'}
  button :back_arrow, {marked:'menuButtonBack'}
  button :video_image, {id:'webImageView'}
  button :favorite_button, {id:'favoriteButton'}
  button :favorite_button, {id:'socialButton'}

  def traits
    [video_page_title]
  end



end