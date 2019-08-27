# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'microposts/index', type: :view do
  before(:each) do
    assign(:microposts, [
             Micropost.create!(
               content: 'MyText',
               user: nil
             ),
             Micropost.create!(
               content: 'MyText',
               user: nil
             )
           ])
  end

  it 'renders a list of microposts' do
    render
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
