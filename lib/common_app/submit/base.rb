module CommonApp
  module Submit
    class Base
      attr_reader :recommender_id, :applicant_id

      def initialize(recommender_id, applicant_id)
        @recommender_id = recommender_id
        @applicant_id   = applicant_id
      end

      def call
        submit
      end

      def method
        'post'
      end

      def params
        {
          applicantId: applicant_id,
          recommenderId: recommender_id
        }
      end

      def submit
        RestApi.new(method, endpoint, params).call
      end
    end
  end
end
