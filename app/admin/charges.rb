ActiveAdmin.register Charge do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :type, :design, :photograpy, :storage, :support, :money
  #
  # or
  #
  # permit_params do
  #   permitted = [:type, :design, :photograpy, :storage, :support, :money]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :charges_type, :design, :photography, :storage, :support, :price

  index do
    selectable_column
    id_column
    column :charges_type
    column :design
    column :photography
    column :storage
    column :support
    column :price
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :charges_type
  filter :design
  filter :photography
  filter :storage
  filter :support
  filter :price
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :charges_type
      f.input :design
      f.input :photography
      f.input :storage
      f.input :support
      f.input :price
    end
    f.actions
  end
  
end
