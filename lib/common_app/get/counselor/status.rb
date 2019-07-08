module CommonApp
  module Get
    module Counselor
      class Status
        attr_reader :recommender_id

        def initialize(recommender_id)
          @recommender_id =  recommender_id
        end

        def call
          status
        end

        private

        def status
          SoapService.new(operation, message).call
        end

        def operation
          :get_counselor_status
        end

        def message
          { RecommenderId: recommender_id }
        end
      end
    end
  end
end
