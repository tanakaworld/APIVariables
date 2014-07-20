module API
  module V1
    module Default
      extend ActiveSupport::Concern

      included do
        version 'v1'
        format :json

        rescue_from ActiveRecord::RecordNotFound do |e|
          error_response(message: e.message, status: 404)
        end

        rescue_from :all do |e|
          if Rails.env.development?
            raise e
          else
            Raven.capture_exceptin(e)
            error_response(message: "Internal server error", status: 500)
          end
        end

        before do
          error!('Unauthorized', 401) unless headers['Authorization'] == "some token"
        end
      end
    end
  end
end