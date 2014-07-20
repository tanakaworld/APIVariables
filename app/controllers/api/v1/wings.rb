module API
  module V1
    class Wings < Grape::API
      include API::V1::Defaults
      
      resource :wings do
        desc "Return list of wings"
        get do
          Wings.all
        end
      end
    end
  end
end