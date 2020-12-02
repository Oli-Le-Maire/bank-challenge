class Bank

  attr_reader :balance

  def initialize
    @balance = 500
    @deposited = 0
    @withdrawn = 0
    @bank_statement = [['Date || Credit || Debit || Balance']]
    @single_deposited_amount = []
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

  # def add_transaction_details_to_empty_array
  #   @single_deposited_amount << @deposited
  # end




end
