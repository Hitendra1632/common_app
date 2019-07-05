module CommonApp
  module Get
    module Counselor
      class FeeWavierStatus < Base

        private

        def operation
          :get_form_fee_waiver_status
        end

      end
    end
  end
end
