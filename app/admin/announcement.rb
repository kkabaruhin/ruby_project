ActiveAdmin.register Announcement do
  permit_params :title, :body

  filter :title
  #after_build do |x|
  # x.admin_user = current_admin_user
  #end

  index do
    selectable_column
    id_column
    column :title
    column :created_at
    actions
  end
  form do |f|
    f.inputs do
      f.input :title
      f.input :body, as: :froala_editor
    end
    f.actions
  end
end