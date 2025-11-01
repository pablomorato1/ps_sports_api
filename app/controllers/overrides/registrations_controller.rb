class Overrides::RegistrationsController < DeviseTokenAuth::RegistrationsController
  before_action :configure_permitted_parameters

  protected

  # configura o controlador de registro
  def configure_permitted_parameters
    added_attrs = [:name, :birth_date, :address, :role, :parent_id, :email, :password, :password_confirmation]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
    devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
  end
end