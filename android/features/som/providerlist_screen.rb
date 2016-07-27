class ProviderlistScreen < Testmunk::Android::Screen

  text :page_title, {marked:'Choose Provider'}

  def traits
    page_title
  end

   def scroll_to_name(provider)
    while element_does_not_exist("* marked:'#{provider}'") do
      scroll_down
    end
  end
end
