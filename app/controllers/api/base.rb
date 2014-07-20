module API
  module V1
    class Base < Grape::API
      mout API::V1::Base
      mout API::V2::Base
    end
  end
end