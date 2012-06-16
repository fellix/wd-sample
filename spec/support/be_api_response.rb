class BeApiResponse
  def initialize verb, url
    @service = WSList.all.find{|s| s.verb == verb.to_sym && s.url == "#{url}"}
    raise "API method [#{verb}] #{url} NOT FOUND" unless @service
  end

  def matches? response
    @response = response
    @valid, @errors = @service.validate_hash_response(JSON(response.body))
    @valid
  end

  def description
    "be api response for [#{@service.verb}] #{@service.url}"
  end

  def failure_message
    @errors.join(' & ')
  end
end

def have_api_response verb, url
  BeApiResponse.new(verb, url)
end