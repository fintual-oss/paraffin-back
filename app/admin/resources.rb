ActiveAdmin.register Resource do
  ActiveAdmin.register Resource do
    permit_params :name, :url, :user_id, :learning_unit_id
  end
end
