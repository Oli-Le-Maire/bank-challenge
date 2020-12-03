require 'bank'

describe Bank do

  it 'adds a transaction_array to the bank_statement' do
    date = TransactionDate.new
    today = date.date_formatter
    subject.amount_deposited(750)
    expect { subject.view_bank_statement }.to output("Date || Credit || Debit || Balance\n#{today} || 750 ||  || 750\n").to_stdout
  end

  it 'adds multiple transaction_arrays to the bank_statement' do
    date = TransactionDate.new
    today = date.date_formatter
    subject.amount_deposited(1)
    subject.amount_deposited(2)
    expect { subject.view_bank_statement }.to output("Date || Credit || Debit || Balance\n#{today} || 2 ||  || 3\n#{today} || 1 ||  || 1\n").to_stdout
  end

  it 'adds a transaction_array to the bank_statement' do
    date = TransactionDate.new
    today = date.date_formatter
    subject.amount_to_withdraw(2000)
    expect { subject.view_bank_statement }.to output("Date || Credit || Debit || Balance\n#{today} ||  || 2000 || -2000\n").to_stdout
  end

  it 'adds multiple transaction_arrays to the bank_statement' do
    date = TransactionDate.new
    today = date.date_formatter
    subject.amount_to_withdraw(3000)
    subject.amount_to_withdraw(1500)
    expect { subject.view_bank_statement }.to output("Date || Credit || Debit || Balance\n#{today} ||  || 1500 || -4500\n#{today} ||  || 3000 || -3000\n").to_stdout
  end

  it 'adds multiple transaction_arrays to the bank_statement' do
    date = TransactionDate.new
    today = date.date_formatter
    subject.amount_deposited(90_000)
    subject.amount_to_withdraw(10_000)
    expect { subject.view_bank_statement }.to output("Date || Credit || Debit || Balance\n#{today} ||  || 10000 || 80000\n#{today} || 90000 ||  || 90000\n").to_stdout
  end

  it 'formats the bank statement array to required format' do
    date = TransactionDate.new
    today = date.date_formatter
    subject.amount_deposited(100)
    expect { subject.view_bank_statement }.to output("Date || Credit || Debit || Balance\n#{today} || 100 ||  || 100\n").to_stdout
  end

end
