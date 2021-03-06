require 'secretdiary'

describe SecretDiary do

  describe '#initialize' do
    it 'initializes state as an instance of Security' do
      expect(subject.state).to be_instance_of Security
    end

    it 'sets the diary to locked' do
      expect(subject.state).to be_locked
    end
  end

  it "secret_diary responds to unlock method" do
    expect(subject).to respond_to (:unlock)
  end

  it "when locked add_entry throws an error" do
    expect(subject.add_entry).to eq "Diary locked!"
  end

  it "when locked get_entries throws an error" do
    expect(subject.get_entries).to eq "Diary locked!"
  end

  it "secret_diary state changes to unlocked when unlock method is called" do
    expect(subject.unlock).to eq false
  end

  it "secret_diary state changes to locked when lock method is called" do
    expect(subject.lock).to eq true
  end
end
