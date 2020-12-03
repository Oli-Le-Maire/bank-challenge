require_relative 'date'

class Bank

  attr_reader :balance, :transaction_array, :date_formatter

  def initialize
    @date = Date.new
    @balance = 0
    @transaction_array = []
    @deposited = 0
    @withdrawn = 0
    @bank_statement = [['Date || Credit || Debit || Balance']]
  end

  def amount_deposited(deposited = 0)
    @deposited = deposited
    @balance += @deposited
    format_transaction_array
  end

  def amount_to_withdraw(withdrawn = 0)
    @withdrawn = withdrawn
    @balance -= @withdrawn
    format_transaction_array
  end

  def format_transaction_array
    @transaction_array << "#{@date.date_formatter}" +
    " || " + "#{@deposited}" + " || " + "#{@withdrawn}" +
    " || " + "#{@balance}"
    add_transaction_array_to_bank_statement
  end

  def add_transaction_array_to_bank_statement
    @bank_statement << @transaction_array
    @transaction_array = []
    format_bank_statement
  end

  def format_bank_statement
    @bank_statement_to_view = @bank_statement.each { |x| puts x }
    view_bank_statement
  end

  def view_bank_statement
    @bank_statement_to_view
  end

end
