# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_account

  def current_account
    OpenStruct.new(id: Random.rand(1..99_999))
  end
end
