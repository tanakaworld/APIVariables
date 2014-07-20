module API
  module V1
    class Hussars < Grape::API
      version 'v1'
      format :json

      resource :hussars do
        desc "Return list of hussars"
        get do
          Hussar.all
        end
      end
    end
  end
end