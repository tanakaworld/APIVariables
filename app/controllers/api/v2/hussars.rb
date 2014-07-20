module API
  module V2
    class Hussars < Grape::API
      version 'v2'
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