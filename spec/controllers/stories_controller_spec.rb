require 'spec_helper'

describe StoriesController do

  describe "GET new" do
    it "assigns a new story" do
      get :new
      assigns(:story).should be_a_new(Story)
    end
  end

  describe "POST create" do

    let(:valid_post) do
      {
        name: "Esther en Ruben",
        title: "Title",
        description: "Description",
        photo: fixture_file_upload("/blank.pdf", "application/pdf")
      }
    end

    it "saves a valid story" do
      expect {
        post :create, story: valid_post
      }.to change { Story.count }.from(0).to(1)
    end

    it "does not store an invalid story" do
      expect {
        post :create, params: { story: {} }
      }.not_to change { Story.count }.from(0).to(1)
    end
  end

end
