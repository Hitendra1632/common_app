module Post
	module Counselor
		class MidYearReport
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
				:post_form_counselor_midyear_report
			end

		end
	end
end