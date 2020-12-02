require 'bank'

describe Bank do
  it 'lets a user see his/her default bank balance' do
    expect(subject.balance).to eq 0
  end

  it 'adds deposited money to the users bank balance' do
    subject.amount_deposited(500)
    expect(subject.balance).to eq 500
  end

  it 'subtracts money from the users bank balance' do
    subject.amount_to_withdraw(500)
    expect(subject.balance).to eq -500
  end

  it 'allows a user to see his/her bank balance after depositing money' do
    subject.amount_deposited(35)
    expect(subject.balance).to eq 35
  end

  it 'allows a user to see his/her bank balance after withdrawing money' do
    subject.amount_to_withdraw(65)
    expect(subject.balance).to eq -65
  end

  #this test's stub is not working as it should at present and will only work if the current date is updated each day
  it 'formats the transaction_array' do
    subject.stub(:date_formatter) {'02/12/2020'}
    subject.amount_deposited(900)
    expect(subject.transaction_array).to eq ['02/12/2020', 900, 0, 900]
  end

  it 'adds a transaction_array to the bank_statement' do
    subject.amount_deposited(750)
    expect(subject.view_bank_statement).to eq [['Date || Credit || Debit || Balance'], ['02/12/2020', 750, 0, 750]]
  end

end
