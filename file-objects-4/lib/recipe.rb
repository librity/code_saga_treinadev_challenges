# frozen_string_literal: true

class Recipe
  attr_reader :title, :description, :ingredients, :cook_time, :featured

  def initialize(attributes)
    @title = attributes[:title]
    @description = attributes[:description]
    @ingredients = attributes[:ingredients]
    @cook_time = attributes[:cook_time]
    @featured = attributes[:featured] || false
  end

  def self.from_json(path)
    raw_json = File.read(path)
    parsed_json = JSON.parse(raw_json)

    return new(parsed_json.symbolize_keys) if parsed_json.is_a?(Hash)

    parsed_json.map { |params| new(params.symbolize_keys) }
  end

  def save_to_file
    File.write('data/recipe.json', to_json)
  end

  def to_json(*_args)
    JSON.generate(pretty_attributes)
  end

  private

  def pretty_attributes
    prototype = as_json.symbolize_keys
    prototype[:title] = "[Destaque] #{title}"
    prototype[:cook_time] = "#{cook_time} minutos"
    prototype.delete(:featured)

    prototype
  end
end
