class Withdrawal < Preparation

  def questions
    {
      'currency' => 'number',
      'number' => 'account',
      'account' => nil
    }
  end
end