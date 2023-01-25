module Api
  module V1
    class ArticlesController < ApplicationController
      def index
        render json: [{name: 'Funko'}, { name: 'Amiibo' }]
      end
    end
  end
end
