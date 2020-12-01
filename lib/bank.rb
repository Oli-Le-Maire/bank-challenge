class Bank

  attr_reader :balance

  def initialize
    @balance = 0
    @amount_to_deposit = 0
  end

  def deposited(amount_to_deposit)
    @amount_to_deposit = amount_to_deposit
  end

  def add_deposit_to_balance
    @balance += @amount_to_deposit
  end

end
