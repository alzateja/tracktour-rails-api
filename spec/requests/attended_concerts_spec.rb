require 'rails_helper'

RSpec.describe "AttendedConcerts", type: :request do
  describe "GET /attended_concerts" do
    it "works! (now write some real specs)" do
      get attended_concerts_path
      expect(response).to have_http_status(200)
    end
  end
end
