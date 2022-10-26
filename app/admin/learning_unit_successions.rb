ActiveAdmin.register LearningUnitSuccession do
  belongs_to :cycle
  navigation_menu :cycle
  permit_params :predecessor_id, :successor_id, :cycle_id

  form do |f|
    f.inputs "Cycle #{cycle.name}" do
      f.input :cycle, as: :hidden, collection: cycle
      f.input :predecessor, as: :select, collection: cycle.learning_units
      f.input :successor, as: :select, collection: cycle.learning_units
    end
    f.actions
  end
end
