# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    # try rails logger
    Rails.logger.info 'Accessing the home page'
  end
end
