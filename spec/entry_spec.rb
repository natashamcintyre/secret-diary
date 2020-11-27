require 'entry'

describe Entry do
  it 'initializes with no entries' do
    expect(subject.entries).to be_empty
  end

  it 'adds an entry to entries' do
    allow($stdin).to receive(:gets).and_return('foo')
    expect { subject.add }.to change { subject.entries }
  end

  it 'displays entries' do
    allow($stdin).to receive(:gets).and_return('foo')
    subject.add
    expect(subject.get).not_to be_empty
  end
end
