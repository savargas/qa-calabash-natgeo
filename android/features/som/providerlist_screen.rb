class ProviderlistScreen < Testmunk::Android::Screen

  text :page_title, {marked:'Choose Provider'}

  def traits
    page_title
  end

  # def touch_provider(provider)
  #   # touch("* marked:'#{provider}'") if scroll_to_text(provider_query)
  #   provider_query = "* marked:'#{provider}'"
  #   touch(provider_query) if scroll_to_text(provider_query)
  # end
  #
  # def scroll_to_text(text)
  #   query_result = query(text)
  #   current_screen_state = query("* id:'text1'")
  #   prev_screen_state = []
  #
  #   while (query_result.empty? and (current_screen_state != prev_screen_state))
  #     prev_screen_state = current_screen_state
  #     scroll_up
  #     current_screen_state = query("* id:'text1'")
  #     query_result = query(text)
  #   end
  #   query(text)
  # end

  def scroll_to_name(provider)
    while element_does_not_exist("* marked:'#{provider}'") do
      scroll_down
    end
  end
end
