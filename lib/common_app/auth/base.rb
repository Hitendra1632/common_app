module CommonApp
  module Auth
    class Base
      def call
        cache.fetch(key, options) do
          token
        end
      end

      private

      def cache
        CommonApp.configuration.cache
      end

      def key
        self.class.name.underscore
      end

      def options
        { expires_in: 59.minutes }
      end

      def body
        { Password: CommonApp.configuration.password, UserName: CommonApp.configuration.username }
      end
    end
  end
end
