module CommonApp
  module Get
    module Counselor
      class EarlyDecisionStatus < Base

        private

        def operation
          :get_form_early_decision_status
        end
      end
    end
  end
end
