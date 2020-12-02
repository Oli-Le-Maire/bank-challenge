class Bank

  attr_reader :balance

  def initialize
    @balance = 0
    @deposited = 0
    @withdrawn = 0
    @bank_statement = '0 || 0 || 0 || 0'
  end

  def amount_deposited(deposited)
    @deposited = deposited
  end

  def add_deposit_to_balance
    @balance += @deposited
  end

  def amount_to_withdraw(withdrawn)
    @withdrawn = withdrawn
  end

  def subtract_withdrawn_money_from_balance
    @balance -= @withdrawn
  end

  def bank_statement
    @bank_statement
  end

end
