class Preparation

  private
    def client
      Wit.new(access_token: ENV['wit_token'])
    end
end