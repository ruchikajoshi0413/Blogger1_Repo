ActiveAdmin.register Contactme do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :city, :contact_no
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :city, :contact_no]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :email, :city, :contact_no

  index do
    selectable_column
    id_column
    column :email
    column :city
    column :contact_no
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :city
  filter :contact_no
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :city
      f.input :contact_no
      
    end
    f.actions
  end

  
end
