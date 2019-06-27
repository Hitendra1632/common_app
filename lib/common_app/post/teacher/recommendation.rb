module Post
	module Teacher
		class Recommendation
			attr_reader :params

			def initialize(params)
				@params = params
			end

			def call

			end

			private

			def operation
				:post_form_teacher_recommendation
			end
		end
	end
end