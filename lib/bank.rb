class Bank

  attr_reader :balance

  def initialize
    @balance = 0
    @transaction_array = []
  end

  def amount_deposited(deposited)
    @balance += deposited
    @transaction_array << deposited
  end

  def amount_to_withdraw(withdrawn)
    @balance -= withdrawn
    @transaction_array << withdrawn
  end


end
