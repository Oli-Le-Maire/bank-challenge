require 'bank'

describe Bank do

  it 'adds a transaction_array to the bank_statement' do
    subject.amount_deposited(750)
    expect { subject.view_bank_statement }.to output
    "Date || Credit || Debit || Balance\n
      03/12/2020 || 750 || 0 || 750\n".to_stdout
  end

  it 'adds multiple transaction_arrays to the bank_statement' do
    subject.amount_deposited(750)
    subject.amount_deposited(1000)
    expect { subject.view_bank_statement }.to output
    "Date || Credit || Debit || Balance\n03/12/2020 || 1000 || 0 || 1750\n
      03/12/2020 || 750 || 0 || 750\n".to_stdout
  end

  it 'adds a transaction_array to the bank_statement' do
    subject.amount_to_withdraw(2000)
    expect { subject.view_bank_statement }.to output
    "Date || Credit || Debit || Balance\n03/12/2020 || 0 || 2000 || -2000\n".to_stdout
  end

  it 'adds multiple transaction_arrays to the bank_statement' do
    subject.amount_to_withdraw(3000)
    subject.amount_to_withdraw(1500)
    expect { subject.view_bank_statement }.to output
    "Date || Credit || Debit || Balance\n03/12/2020 || 0 || 1500 || -4500\n
      03/12/2020 || 0 || 3000 || -3000\n".to_stdout
  end

  it 'adds multiple transaction_arrays to the bank_statement' do
    subject.amount_deposited(90_000)
    subject.amount_to_withdraw(10_000)
    expect { subject.view_bank_statement }.to output
    "Date || Credit || Debit || Balance\n03/12/2020 || 0 || 10000 || 80000\n
      03/12/2020 || 90000 || 0 || 90000\n".to_stdout
  end

  it 'formats the bank statement array to required format' do
    subject.amount_deposited(100)
    expect { subject.view_bank_statement }.to output
    "Date || Credit || Debit || Balance\n03/12/2020 || 100 || 0 || 100\n".to_stdout
  end

end
