module API
  module V1
    class Base < Grape::API
      mout API::V1::Hussars
      mout API::V1::Wings
    end
  end
end