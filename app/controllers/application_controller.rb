class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # load_and_authorize_resource


  # check_authorization
  # Permite levantar una excepcion que es para el programador, no para el usario. Para recordar que no estamos agregando la autorización y que existe una potencial falla de seguridad

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.html { redirect_to root_url, alert: exception.message}
    end
  end
end
