module CommonApp
  module Get
    class SecondarySchools
      def call
        schools
      end

      private

      def schools
        SoapService.new(operation).call
      end

      def operation
        :get_secondary_schools
      end
    end
  end
end
