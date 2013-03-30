module Admin
  class BaseController < ApplicationController

    http_basic_authenticate_with :name => "jubileum", :password => "geheimwachtwoord"

    layout 'admin'

  end
end
