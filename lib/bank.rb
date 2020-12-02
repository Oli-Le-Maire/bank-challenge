require_relative 'date'

class Bank

  attr_reader :balance

  def initialize
    @date = Date.new
    @balance = 0
    @transaction_array = []
  end

  def amount_deposited(deposited)
    @balance += deposited
    @transaction_array << @date.date_formatter
    @transaction_array << deposited
  end

  def amount_to_withdraw(withdrawn)
    @balance -= withdrawn
    @transaction_array << @date.date_formatter
    @transaction_array << withdrawn
  end

end
