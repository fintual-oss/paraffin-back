ActiveAdmin.register ResourceComment do
  ActiveAdmin.register ResourceComment do
    permit_params :content, :user_id, :resource_id
  end
end
