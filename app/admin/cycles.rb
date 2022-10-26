ActiveAdmin.register Cycle do
  permit_params :curriculum,
                :name,
                :order_number,
                :learning_goals_description,
                :challenge_description,
                :boilerplate_url

  sidebar 'Learning Unit Successions', only: %i[show edit] do
    ul do
      li link_to 'Learning Unit Successions',
                 admin_cycle_learning_unit_successions_path(resource)
      li link_to 'Cycle Learning Units',
                 admin_cycle_cycle_learning_units_path(resource)
    end
  end
end
