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

  it 'lets a user see an empty bank statement' do
    expect(subject.balance).to eq 0
  end

end
