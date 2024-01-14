require_relative '../cipher'

describe '#caesar_cipher' do
  subject {}
  it 'returns the string two letters down' do
    expect(caesar_cipher('hi', 2)).to eql('jk')
  end

  it 'returns to A if number pushes past Z' do
    expect(caesar_cipher('YZ', 2)).to eql('AB')
  end

  it 'maintains the same letter case' do
    expect(caesar_cipher('IzI', 2)).to eql('KbK')
  end

  it 'ignores punctuation' do
    expect(caesar_cipher("hi, I'm Fred!", 5)).to eql("mn, N'r Kwji!")
  end
end
