module Api
  class ApiController < ::ApplicationController
    respond_to :json
    skip_before_action :verify_authenticity_token

    def index
      @collection = resource_class.all
      render json: @collection.as_json(as_json_collection)
    end

    private

    def resource_class
      raise NotImplementedError
    end

    def as_json_collection
      {}
    end

  end
end