require_relative 'date'

class Bank

  attr_reader :balance, :transaction_array, :date_formatter

  def initialize
    @date = Date.new
    @balance = 0
    @transaction_array = []
    @deposited = 0
    @withdrawn = 0
  end

  def amount_deposited(deposited = 0, withdrawn = 0)
    @deposited = deposited
    @balance += @deposited
    format_transaction_array
  end

  def amount_to_withdraw(withdrawn = 0, deposited = 0)
    @withdrawn = withdrawn
    @balance -= @withdrawn
    format_transaction_array
  end

  def format_transaction_array
    @transaction_array << @date.date_formatter
    @transaction_array << @deposited
    @transaction_array << @withdrawn
    @transaction_array << @balance
    @transaction_array
  end

end
