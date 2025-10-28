class Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  private

  # Permitir campos extras no sign_up
  def sign_up_params
    params.permit(:email, :password, :password_confirmation,
                  :nome, :birth_date, :address, :role, :parent_id)
  end

  # Permitir campos extras no account_update
  def account_update_params
    params.permit(:email, :password, :password_confirmation,
                  :nome, :birth_date, :address, :role, :parent_id)
  end
end
