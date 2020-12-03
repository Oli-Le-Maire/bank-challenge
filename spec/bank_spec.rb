require 'bank'

describe Bank do

  it 'adds a transaction_array to the bank_statement' do
    date = TransactionDate.new
    today = date.date_formatter
    subject.amount_deposited(750)
    expect { subject.view_bank_statement }.to output("Date || Credit || Debit || Balance\n#{today} || 750 ||  || 750\n").to_stdout
  end

  it 'adds a transaction_array to the bank_statement' do
    date = TransactionDate.new
    today = date.date_formatter
    subject.amount_deposited(75_000_000_001)
    expect { subject.view_bank_statement }.to output("Date || Credit || Debit || Balance\n#{today} || 75000000001 ||  || 75000000001\n").to_stdout
  end

  it 'adds multiple transaction_arrays to the bank_statement' do
    date = TransactionDate.new
    today = date.date_formatter
    subject.amount_deposited(1)
    subject.amount_deposited(2)
    expect { subject.view_bank_statement }.to output("Date || Credit || Debit || Balance\n#{today} || 2 ||  || 3\n#{today} || 1 ||  || 1\n").to_stdout
  end

  it 'adds multiple transaction_arrays to the bank_statement' do
    date = TransactionDate.new
    today = date.date_formatter
    subject.amount_deposited(400)
    subject.amount_deposited(12_376)
    expect { subject.view_bank_statement }.to output("Date || Credit || Debit || Balance\n#{today} || 12376 ||  || 12776\n#{today} || 400 ||  || 400\n").to_stdout
  end

  it 'adds a transaction_array to the bank_statement' do
    date = TransactionDate.new
    today = date.date_formatter
    subject.amount_to_withdraw(2000)
    expect { subject.view_bank_statement }.to output("Date || Credit || Debit || Balance\n#{today} ||  || 2000 || -2000\n").to_stdout
  end

  it 'adds a transaction_array to the bank_statement' do
    date = TransactionDate.new
    today = date.date_formatter
    subject.amount_to_withdraw(429_852_093_875_012_937_523_059_750_209_735_097_320_975_029_750_294)
    expect { subject.view_bank_statement }.to output("Date || Credit || Debit || Balance\n#{today} ||  || 429852093875012937523059750209735097320975029750294 || -429852093875012937523059750209735097320975029750294\n").to_stdout
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
    subject.amount_to_withdraw(95_000)
    subject.amount_to_withdraw(1)
    expect { subject.view_bank_statement }.to output("Date || Credit || Debit || Balance\n#{today} ||  || 1 || -95001\n#{today} ||  || 95000 || -95000\n").to_stdout
  end

  it 'adds a withdrawel and a deposit transaction_arrays to the bank_statement' do
    date = TransactionDate.new
    today = date.date_formatter
    subject.amount_deposited(90_000)
    subject.amount_to_withdraw(10_000)
    expect { subject.view_bank_statement }.to output("Date || Credit || Debit || Balance\n#{today} ||  || 10000 || 80000\n#{today} || 90000 ||  || 90000\n").to_stdout
  end

  it 'adds a withdrawel and a deposit transaction_arrays to the bank_statement' do
    date = TransactionDate.new
    today = date.date_formatter
    subject.amount_to_withdraw(76_000)
    subject.amount_deposited(92_008)
    expect { subject.view_bank_statement }.to output("Date || Credit || Debit || Balance\n#{today} || 92008 ||  || 16008\n#{today} ||  || 76000 || -76000\n").to_stdout
  end

  it 'formats the bank statement array to required format' do
    date = TransactionDate.new
    today = date.date_formatter
    subject.amount_deposited(99)
    subject.amount_to_withdraw(99)
    expect { subject.view_bank_statement }.to output("Date || Credit || Debit || Balance\n#{today} ||  || 99 || 0\n#{today} || 99 ||  || 99\n").to_stdout
  end

  it 'formats the bank statement array to required format' do
    date = TransactionDate.new
    today = date.date_formatter
    subject.amount_to_withdraw(95_000)
    subject.amount_deposited(2)
    expect { subject.view_bank_statement }.to output("Date || Credit || Debit || Balance\n#{today} || 2 ||  || -94998\n#{today} ||  || 95000 || -95000\n").to_stdout
  end

end
