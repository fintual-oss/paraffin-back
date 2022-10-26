ActiveAdmin.register CycleLearningUnit do
  belongs_to :cycle
  navigation_menu :cycle
  permit_params :learning_unit
end
