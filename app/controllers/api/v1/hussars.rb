module API
  module V1
    class Hussars < Grape::API
      include API::V1::Default

      resource :hussars do
        desc "Return list of hussars"
        get do
          Hussar.all
        end
      end
    end
  end
end