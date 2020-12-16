require 'open-uri'
require 'net/http'
require 'json'
#require 'pry'

class GetRequester

    attr_accessor :url

    def initialize(url)
#This class should be able to initialize with a string URL.
        @url = url
    end

    def get_response_body
#sends a GET request to the URL passed in on initialization. 
#This method should return the body of the response.
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)   
        response.body
    end

    def parse_json
#should use get_response_body to send a request, then return a 
#Ruby Array or Hash made up of data converted from the response of that request.
        JSON.parse(self.get_response_body)
    end
#binding.pry
end