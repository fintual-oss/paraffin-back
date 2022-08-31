require 'rails_helper'

RSpec.describe 'learning_units/index', type: :view do
  before do
    mock_learning_units = [
      LearningUnit.create!(
        name: 'Intro to python'
      ),
      LearningUnit.create!(
        name: 'Title'
      )
    ]
    assign(:curriculum,
           Curriculum.create!(
             name: 'test',
             learning_units: mock_learning_units
           ))
    render
  end

  it do
    expect(rendered).to match(/Title/)
  end

  it do
    expect(rendered).to include('python')
  end

  it do
    expect(rendered).to match(/test/)
  end
end
