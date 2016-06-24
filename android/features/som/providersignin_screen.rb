class ProvidersigninScreen < Testmunk::Android::Screen

  view :page_title, {marked:'Sign In'}

  def traits
    page_title
  end

  def username_field(usr)
    enter_text("webView css:'INPUT' index:0", "#{usr}")
  end

  def password_field(pwd)
    enter_text("webView css:'INPUT' index:1", "#{pwd}")
  end
end
