# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Tasks', type: :feature do
  scenario 'create user' do
    visit root_path
    click_link 'New User'
  end
end
