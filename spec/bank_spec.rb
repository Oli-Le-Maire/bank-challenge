describe User_Interface do
  it 'lets the user see his/her bank balance' do
    expect(subject.balance).to eq('0')
  end
end
