require 'spec_helper'

describe Recipe do
  it 'Instancia um objeto do tipo receita' do
    recipe = Recipe.new(title: 'Feijoada',
                        description: 'Você nunca comeu uma receita igual',
                        ingredients: 'Feijão e Carnes',
                        cook_time: 80,
                        featured: true)

    expect(recipe.class).to eq Recipe
    expect(recipe.title).to eq 'Feijoada'
    expect(recipe.description).to eq 'Você nunca comeu uma receita igual'
    expect(recipe.ingredients).to eq 'Feijão e Carnes'
    expect(recipe.cook_time).to eq 80
    expect(recipe.featured).to eq true
  end

  it 'Converte um json para um objeto do tipo receita' do
    recipe = Recipe.from_json('data/pudim.json')

    expect(recipe.class).to eq Recipe
    expect(recipe.title).to eq 'Pudim'
    expect(recipe.description).to eq 'O melhor pudim da sua vida!'
    expect(recipe.ingredients).to eq 'Leite condensado, ovos e leite'
    expect(recipe.cook_time).to eq 80
    expect(recipe.featured).to eq true
  end

  it 'Converte outro json para um objeto do tipo receita' do
    recipe = Recipe.from_json('data/feijoada.json')

    expect(recipe.class).to eq Recipe
    expect(recipe.title).to eq 'Feijoada'
    expect(recipe.description).to eq 'Você nunca comeu uma receita igual.'
    expect(recipe.ingredients).to eq 'Feijão e Carnes'
    expect(recipe.cook_time).to eq 120
    expect(recipe.featured).to eq false
  end

  it 'Converte objeto receita para json' do
    recipe = Recipe.new(title: 'Feijoada',
                        description: 'Você nunca comeu uma receita igual.',
                        ingredients: 'Feijão e Carnes',
                        cook_time: 120,
                        featured: false)

    recipe.save_to_file

    expect(recipe.to_json).to include File.read('data/recipe.json')
  end

  it 'Converte outro objeto receita para json' do
    recipe = Recipe.new(title: 'Pudim',
                        description: 'O melhor pudim da sua vida!',
                        ingredients: 'Leite condensado, ovos e leite',
                        cook_time: 80,
                        featured: false)

    recipe.save_to_file

    expect(recipe.to_json).to include File.read('data/recipe.json')
  end

  it 'Converte um json com array para array de objetos' do
    recipes = Recipe.from_json('data/recipes.json')

    expect(recipes.class).to eq Array
    expect(recipes.count).to eq 2
    expect(recipes.first.title).to eq 'Pudim'
    expect(recipes.first.description).to eq 'O melhor pudim da sua vida!'
    expect(recipes.first.ingredients).to eq 'Leite condensado, ovos e leite'
    expect(recipes.first.cook_time).to eq 80
    expect(recipes.first.featured).to eq true
    expect(recipes.last.title).to eq 'Feijoada'
    expect(recipes.last.description).to eq 'Você nunca comeu uma receita igual.'
    expect(recipes.last.ingredients).to eq 'Feijão e Carnes'
    expect(recipes.last.cook_time).to eq 120
    expect(recipes.last.featured).to eq false
  end

  it 'Converte objeto receita para um json customizado' do
    recipe = Recipe.new(title: 'Feijoada',
                        description: 'Você nunca comeu uma receita igual',
                        ingredients: 'Feijão e Carnes',
                        cook_time: 120,
                        featured: true)

    expect(recipe.to_json).to include({
      title: '[Destaque] Feijoada',
      description: 'Você nunca comeu uma receita igual',
      ingredients: 'Feijão e Carnes',
      cook_time: '120 minutos'
    }.to_json)
    expect(recipe.to_json).not_to include({ feature: true }.to_json)
  end
end
