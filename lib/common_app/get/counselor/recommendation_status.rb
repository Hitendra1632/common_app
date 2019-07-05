module CommonApp
  module Get
    module Counselor
      class RecommendationStatus < Base

        private

        def operation
          :get_form_counselor_recommendation_status
        end
      end
    end
  end
end
