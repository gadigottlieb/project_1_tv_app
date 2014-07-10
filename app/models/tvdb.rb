class TVDB

  def self.search_show(tv_info)
    Tmdb::Api.key("02bf83da8680170802ffbae8e4b6f5f4")
    find_show = Tmdb::TV.find(tv_info)
    id = find_show[0].id
    tv_show = Tmdb::TV.detail(id)
  end

end
