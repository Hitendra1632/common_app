module Submit
	module Counselor
		class FeeWaiver
			attr_reader :params

			def initialize(params)
				@params = params
			end

			def call

			end

			private

			def operation
				:submit_counselor_secondary_report
			end
		end
	end
end