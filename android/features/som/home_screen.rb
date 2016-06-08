class HomeScreen < Testmunk::Android::Screen

  view :carousel, {id:'slide_date'}

  def traits
    carousel
  end

end