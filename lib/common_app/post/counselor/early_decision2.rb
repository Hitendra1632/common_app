module Post
	module Counselor
		class EarlyDecision2
			attr_reader :params

			def initialize(params)
				@params = params
			end

			def call

			end

			private

			def response
				SoapService.new(operation, body, false).call
			end

			def operation
				:post_form_counselor_early_decision2
			end

		end
	end
end