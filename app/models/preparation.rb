class Preparation
  attr_reader :field, :value, :next_question

  def initialize(field:, answer:)
    @field = field
    json = client.message(answer)
    @matches = json['entities'][field]
    if confident?
      @next_question = questions[field]
      @value = most_confident_match
    else
      @next_question = field
      @value = nil
    end
  end

  def to_json
    if @field == 'account'
      json = HTTParty.get('http://10.100.53.200:4000/api/account')
      @value = json.first['accountNumber']['value']
      # @value = '1004' 
      @next_question = nil 
    end
    {field: @field, next_question: @next_question, value: @value}
  end

  private
    def confident?
      return @matches.present? #naiive for testing
    end

    def most_confident_match
      @matches.first['value'] #naiive for testing
    end

    def client
      Wit.new(access_token: ENV['wit_token'])
    end
end