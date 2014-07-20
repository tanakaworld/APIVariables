module API
  module V1
    class Wings < Grape::API
      version 'v1'
      format :json

      resource :wings do
        desc "Return list of wings"
        get do
          Wings.all
        end
      end
    end
  end
end