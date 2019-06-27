module Post
	module Counselor
		class OptionalReport
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
				:post_form_counselor_optional_report
			end

		end
	end
end