class Bank

  attr_reader :balance

  def initialize
    @balance = 0
    @bank_statement = [['Date || Credit || Debit || Balance']]
    @deposited_array = []
  end

  def amount_deposited(deposited)
    @balance += deposited
    @deposited_array << deposited
  end

  def amount_to_withdraw(withdrawn)
    @balance -= withdrawn
    @deposited_array << withdrawn
  end


end
