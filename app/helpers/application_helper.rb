module ApplicationHelper

  def date_field_tag(name, value = nil, options = {})
    text_field_tag(name, value, options.stringify_keys.update("type" => "date"))
  end

  def telephone_field_tag(name, value = nil, options = {})
    text_field_tag(name, value, options.stringify_keys.update("type" => "tel"))
  end

end
