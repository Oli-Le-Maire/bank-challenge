require 'bank'

describe Bank do
  it 'lets a user see his/her default bank balance' do
    expect(subject.balance).to eq 0
  end

  it 'adds deposited money to the users bank balance' do
    subject.amount_deposited(500)
    subject.add_deposit_to_balance
    expect(subject.balance).to eq 500
  end

  it 'subtracts money from the users bank balance' do
    subject.amount_to_withdraw(500)
    subject.subtract_withdrawn_money_from_balance
    expect(subject.balance).to eq -500
  end

  it 'shows a string with 4 elements to it separated by ||s' do
    expect(subject.bank_statement).to eq '0 || 0 || 0 || 0'
  end

end
