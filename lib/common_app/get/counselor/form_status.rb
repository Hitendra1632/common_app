module CommonApp
  module Get
    module Counselor
      class FormStatus
        attr_reader :recommender_id, :applicant_id

        def initialize(recommender_id, applicant_id)
          @recommender_id = recommender_id
          @applicant_id   = applicant_id
        end

        def call
          status
        end

        private

        def method
          'get'
        end

        def endpoint
          "counselor/#{recommender_id}/form-status/#{applicant_id}"
        end

        def status
          RestApi.new(method, endpoint, params).call
        end
      end
    end
  end
end
