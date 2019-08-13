class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
    # login後の飛び先指定
    def after_sign_in_path_for(resource)
      case resource
      when Worker
        tops_worker_path
      when Management
        tops_management_path
      end
    end

    def check_admin
      if management_signed_in?
        unless current_management.role == Constants::ROLE_ADMIN
          redirect_to root_path
          flash[:notice] = "権限がありません(only admin)"
        end
      end
    end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
  end
end
