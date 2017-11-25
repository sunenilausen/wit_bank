class Withdrawal < Preparation

  def questions
    {
      'currency' => 'amount',
      'amount' => 'account',
      'account' => nil
    }
  end
end