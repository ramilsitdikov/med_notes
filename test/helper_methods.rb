module HelperMethods
  def response_json
    HashWithIndifferentAccess.new(JSON.parse(response.body))
  end
end
