module Post
	module Counselor
		class SecondaryReport
			attr_reader :params

			def initialize(params)
				@params = params
			end

			def call

			end

			private

			def operation
				:post_form_counselor_secondary_report
			end

		end
	end
end