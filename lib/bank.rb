require_relative 'transaction_date'

class Bank

  attr_reader :balance, :transaction_array, :date_formatter

  def initialize
    @date = TransactionDate.new
    @balance = 0
    @transaction_array = []
    @deposited = 0
    @withdrawn = 0
    @bank_statement_formatting = [['Date || Credit || Debit || Balance']]
  end

  def amount_deposited(deposited = 0, withdrawn = 0)
    @deposited = deposited
    @withdrawn = withdrawn
    @balance += @deposited
    change_0s_to_empty_strings
  end

  def amount_to_withdraw(withdrawn = 0, deposited = 0)
    @withdrawn = withdrawn
    @deposited = deposited
    @balance -= @withdrawn
    change_0s_to_empty_strings
  end

  def change_0s_to_empty_strings
    if @withdrawn.zero?
      @withdrawn = ""
    else
      @deposited = ""
    end
    format_transaction_array
  end

  def format_transaction_array
    @transaction_array << "#{@date.date_formatter}" +
    " || " + "#{@deposited}" + " || " + "#{@withdrawn}" +
    " || " + "#{@balance}"
    @deposited = 0
    @withdrawn = 0
    add_transaction_array_to_bank_statement
  end

  def add_transaction_array_to_bank_statement
    @bank_statement_formatting << @transaction_array
    @transaction_array = []
    format_bank_statement
  end

  def format_bank_statement
    @bank_statement_title_to_top = @bank_statement_formatting.reverse
    @bank_statement_title_to_top.insert(0, @bank_statement_title_to_top.delete_at(-1))
    @bank_statement = @bank_statement_title_to_top.each { |x| puts x }
    view_bank_statement
  end

  def view_bank_statement
    puts @bank_statement
  end

end
