ActiveAdmin.register User do
  ActiveAdmin.register User do
    permit_params :name, :email, :encrypted_password
  end
end
