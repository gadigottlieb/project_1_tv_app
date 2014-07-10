class Tmdb

  def self.search(term)
    Tmdb::Key("02bf83da8680170802ffbae8e4b6f5f4")
    find_show = Tmdb::TV.find(term)
    id = find_show.id
    tv_show = Tmdb::TV.detail(id)
  end




end
