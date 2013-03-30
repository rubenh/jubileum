module Admin
  class StoriesController < BaseController

    def index
      @stories = Story.all
    end

    def show
      @story = Story.find(params[:id])
    end

  end
end
