# frozen_string_literal: true

require 'json'

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
    File.open('data/recipe.json', 'w+') do |f|
      f.print to_json
    end
  end
end
