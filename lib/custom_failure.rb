class CustomFailure < Devise::FailureApp
  def redirect_url
    render 'pages/login'
  end

  def respond
    if http_auth?
      http_auth
    else
      flash[:alert] = I18n.t(:invalid, :scope => [ :devise, :failure ])
      render 'pages/login'
    end
  end
end