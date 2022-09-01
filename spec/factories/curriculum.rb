FactoryBot.define do
  factory :curriculum do
    name { 'Fin program' }
  end
end

def curriculum_with_learning_units(learning_units_count: 5)
  FactoryBot.create(:curriculum) do |curriculum|
    FactoryBot.create_list(:learning_unit, learning_units_count, curriculums: [curriculum])
  end
end
