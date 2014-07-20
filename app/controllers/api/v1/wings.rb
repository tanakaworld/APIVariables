module API
  module V1
    class Wings < Grape::API
      include API::V1::Default

      resource :wings do
        desc "Return list of wings"
        get do
          Wings.all
        end
      end
    end
  end
end