ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation


  # When logged in as a standard AdminUser and you try to change your own password, Devise automatically logs you out.
  # Adding the following controller override to admin_user.rb solves this issue:
  controller do
  def update
    # get the currently logged in AdminUser's id
    current_id = current_admin_user.id
    # load the AdminUser being updated
    @admin_user = AdminUser.find(params[:id])
    # update the AdminUser with new attributes
    # if successful, this will sign out the AdminUser being updated
    if @admin_user.update_attributes(permitted_params[:admin_user])
      # if the updated AdminUser was the currently logged in AdminUser, sign them back in
      if @admin_user.id == current_id
        sign_in(AdminUser.find(current_id), :bypass => true)
      end
      flash[:notice] = I18n.t('devise.passwords.updated_not_active')
      redirect_to '/admin/admin_users'
    # display errors
    else
      render :action => :edit
    end
  end
  end

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
