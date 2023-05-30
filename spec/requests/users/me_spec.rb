# frozen_string_literal: true

require "rails_helper"

RSpec.describe UsersController, type: :controller do
  describe "GET /me" do
    let!(:user) { create :user }

    before do
      sign_in user, scope: :user
      get :me
    end

    it { expect(response).to have_http_status :success }
    it { expect(response).to render_template :me }
  end
end
