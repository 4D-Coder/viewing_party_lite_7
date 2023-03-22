# frozen_string_literal: true

# spec/features/users/discover/index_spec.rb
require 'rails_helper'

describe 'User Discover Page', type: :feature do
  describe 'As a user' do
    context "When I visit '/users/:id/discover'" do
      before(:each) do
        @user1 = create(:user)
      end

      it 'links to the page from the users show page' do
        visit user_path(@user1)

        click_button 'Discover Movies'

        expect(current_path).to eq(user_discover_index_path(@user1))
      end
    end
  end
end
