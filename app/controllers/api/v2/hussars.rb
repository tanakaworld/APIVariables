module API
  module V2
    class Hussars < Grape::API
      include API::V2::Default

      resource :hussars do
        desc "Return list of hussars"
        get do
          Hussar.all
        end
      end
    end
  end
end