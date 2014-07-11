class TVDB

# Searches TV Shows By Title
  def self.search_show_title(tv_info)
    Tmdb::Api.key("02bf83da8680170802ffbae8e4b6f5f4")
    find_show = Tmdb::TV.find(tv_info)
    id = find_show[0].id
    tv_show = Tmdb::TV.detail(id)
  end
# Search Actors By TV Show
  def self.search_actors_show(actor_info)
    Tmdb::Api.key("02bf83da8680170802ffbae8e4b6f5f4")
    find_show = Tmdb::TV.find(actor_info)
    id = find_show[0].id
    actor_show = Tmdb::TV.cast(id)
  end

end
