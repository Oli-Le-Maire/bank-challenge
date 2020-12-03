require 'bank'

describe Bank do

  it 'adds a transaction_array to the bank_statement' do
    subject.amount_deposited(750)
    expect(subject.view_bank_statement).to eq [['Date || Credit || Debit || Balance'],
    ['03/12/2020 || 750 || 0 || 750']]
  end

  it 'adds multiple transaction_arrays to the bank_statement' do
    subject.amount_deposited(750)
    subject.amount_deposited(1000)
    expect(subject.view_bank_statement).to eq [['Date || Credit || Debit || Balance'],
    ['03/12/2020 || 750 || 0 || 750'], ['03/12/2020 || 1000 || 0 || 1750']]
  end

  it 'adds a transaction_array to the bank_statement' do
    subject.amount_to_withdraw(2000)
    expect(subject.view_bank_statement).to eq [['Date || Credit || Debit || Balance'],
    ['03/12/2020 || 0 || 2000 || -2000']]
  end

  it 'adds multiple transaction_arrays to the bank_statement' do
    subject.amount_to_withdraw(3000)
    subject.amount_to_withdraw(1500)
    expect(subject.view_bank_statement).to eq [['Date || Credit || Debit || Balance'],
    ['03/12/2020 || 0 || 3000 || -3000'], ['03/12/2020 || 0 || 1500 || -4500']]
  end

  it 'adds multiple transaction_arrays to the bank_statement' do
    subject.amount_deposited(90000)
    subject.amount_to_withdraw(10000)
    expect(subject.view_bank_statement).to eq [['Date || Credit || Debit || Balance'],
    ['03/12/2020 || 90000 || 0 || 90000'], ['03/12/2020 || 90000 || 10000 || 80000']]
  end

  it 'formats the bank statement array to required format' do
    subject.amount_deposited(100)
    expect(subject.view_bank_statement).to eq [['Date || Credit || Debit || Balance'],
    ['03/12/2020 || 100 || 0 || 100']]
  end

end
