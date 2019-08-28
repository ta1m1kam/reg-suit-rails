# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Tasks', type: :system do
  scenario 'create user' do
    visit root_path
    click_link 'New User'

    expect(page).to have_content 'Back'
    expect(page).to have_content 'Beck'
  end
end
