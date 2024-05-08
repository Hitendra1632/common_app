module CommonApp
  module RecommenderRequests
    class GetRecommenderAccount
      attr_reader :email

      def initialize(email)
        @email = email
      end

      def call
        get_rec_account
      end

      private

      def get_rec_account
        RestApi.new(method, endpoint).call
      end

      def method
        'get'
      end

      def endpoint
        "recommender/profile/#{email}/"
      end
    end
  end
end
