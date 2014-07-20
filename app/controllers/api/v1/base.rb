module API
  module V1
    class Base < Grape::API

      add_swagger_documentation base_path: "/api",
                                api_version: 'v1',
                                hide_documentation_path: true

      mout API::V1::Hussars
      mout API::V1::Wings
    end
  end
end