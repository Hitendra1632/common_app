module Submit
	module Counselor
		class EarlyDecision
			attr_reader :params

			def initialize(params)
				@params = params
			end

			def call

			end

			private

			def operation
				:submit_teacher_recommendation
			end
		end
	end
end