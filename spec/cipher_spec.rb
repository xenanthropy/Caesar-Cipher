# frozen-string-literal: true

require_relative '../cipher'

describe 'Cipher Test' do
  it 'give correct cipher for text (1)' do
    phrase = 'hello, world'
    shift = 5
    expect(cipher(phrase, shift)).to eq 'mjqqt, btwqi'
  end

  it 'give correct cipher for text (2)' do
    phrase = 'I hate cheese!'
    shift = 7
    expect(cipher(phrase, shift)).to eq 'P ohal jollzl!'
  end

  it 'give correct cipher for text (3)' do
    phrase = 'YoU Are So Despicable >:('
    shift = 20
    expect(cipher(phrase, shift)).to eq 'SiO Uly Mi Xymjcwuvfy >:('
  end

  it 'give correct cipher for text (4)' do
    phrase = 'This IS HIDDEN TexT??'
    shift = -5
    expect(cipher(phrase, shift)).to eq 'Ocdn DN CDYYZI OzsO??'
  end
end
