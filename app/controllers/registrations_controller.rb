class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:sponsor).permit(:email, :password, :name, :subscription_type_id, :project_ids)
  end

  def account_update_params
    
  end
end