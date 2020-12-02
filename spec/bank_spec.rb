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

end
