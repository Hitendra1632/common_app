module CommonApp
  module RecommenderRequests
    class UpdateRecommenderEmail
      attr_reader :email, :rec_id

      def initialize(email, rec_id)
        @email = email
        @rec_id = rec_id
      end

      def call
        update_recommender_email
      end

      private

      def update_recommender_email
        parse_response(RestApi.new(method, endpoint, params).call)
      end

      def parse_response(response)
        begin
          response.deep_transform_keys { |key| key.to_s.underscore }
        rescue NoMethodError
          response.body.gsub(/["\\]/, '')
        end
      end

      def method
        'patch'
      end

      def endpoint
        "recommender"
      end

      def params
        [
          {
            "op": "add",
            "path": "/email",
            "value": email
          },
          {
            "op": "add",
            "path": "/recommenderid",
            "value": rec_id
          }
        ]
      end
    end
  end
end
