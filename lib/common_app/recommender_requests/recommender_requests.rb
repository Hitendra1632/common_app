module CommonApp
  class RecommenderRequests
    attr_reader :first_name, :last_name, :rec_id

    def initialize(first_name, last_name, rec_id)
      @first_name = first_name
      @last_name = last_name
      @rec_id = rec_id
    end

    def call
      update_recommender_account_profile
    end

    private

    def update_recommender_account_profile
      RestApi.new(method, endpoint, params).call
    end

    def method
      'patch'
    end

    def endpoint
      "recommender"
    end

    def params
      [
        {
          "op": "add",
          "path": "/firstname",
          "value": first_name
        },
        {
          "op": "add",
          "path": "/lastname",
          "value": last_name
        },
        {
          "op": "add",
          "path": "/recommenderid",
          "value": rec_id
        }
      ]
    end
  end
end
