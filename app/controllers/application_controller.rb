class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(member_t)
  	if current_member_t.membership == 'Administration'
      member_ts_path
  	elsif current_member_t.membership == 'Tutors'
      tutee_ts_path
  	elsif current_member_t.membership == 'Modules'
      module_ts_path
  	elsif current_member_t.membership == 'Data Analysis'
      worksheet_ts_path
  	end
  end
  def after_sign_out_path_for(member_t)
  	root_path
  end



end
