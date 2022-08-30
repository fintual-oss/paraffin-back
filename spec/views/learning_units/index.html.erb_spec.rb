require 'rails_helper'

RSpec.describe 'learning_units/index', type: :view do
  before(:each) do
    assign(:learning_units, [
             LearningUnit.create!(
               name: 'Intro to python'
             ),
             LearningUnit.create!(
               name: 'Title'
             )
           ])
    assign(:curriculum,
           Curriculum.create!(
             name: 'test'
           ))
  end

  it 'renders the list of learning resources of a specific curriculum' do
    render

    expect(rendered).to match(/Title/)
    expect(rendered).to include('python')
    expect(rendered).to match(/test/)
  end
end
