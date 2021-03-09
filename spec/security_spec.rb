require 'security'

describe Security do
  it 'initializes as locked' do
    expect(subject.locked).to be true
  end

  it 'unlocks the diary' do
    subject.unlock
    expect(subject.locked).to be false
  end

  it 'locks the diary' do
    subject.unlock
    subject.lock
    expect(subject.locked).to be true
  end

  it 'returns locked (true) when diary is locked' do
    expect(subject.locked?).to be true
  end

  it 'returns unlocked (false) when diary is unlocked' do
    subject.unlock
    expect(subject.locked?).to be false
  end
end
