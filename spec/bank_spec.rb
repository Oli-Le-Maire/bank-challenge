require 'bank'

describe Bank do
  it 'lets a user see his/her bank balance' do
    expect(subject.balance).to eq 0
  end

  it 'adds deposited money to the users bank balance' do
    subject.deposited(500)
    subject.add_deposit_to_balance
    expect(subject.balance).to eq 500
  end

end
