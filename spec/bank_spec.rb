require 'bank'

describe Bank do
  it 'lets a user see his/her bank balance' do
    expect(subject.balance).to eq (0)
  end

  it 'lets a user deposit money into their bank balance' do
    expect(subject.deposited(100)).to eq (100)
  end



end
