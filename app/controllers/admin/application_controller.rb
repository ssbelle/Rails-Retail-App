class Admin::ApplicationController < ApplicationController
 http_basic_authenticate_with name:ENV["ADMIN_NAME"], password: ENV["ADMIN_PASSWORD"], except: :index
end