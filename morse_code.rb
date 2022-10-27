@mores_codes = {
  A: '.-',
  B: '-...',
  C: '-.-.',
  D: '-..',
  E: '.',
  F: '..-.',
  G: '--.',
  H: '....',
  I: '..',
  J: '.---',
  K: '-.-',
  L: '.-..',
  M: '--',
  N: '-.',
  O: '---',
  P: '.--.',
  Q: '--.-',
  R: '.-.',
  S: '...',
  T: '-',
  U: '..-',
  V: '...-',
  W: '.--',
  X: '-..-',
  Y: '-.--',
  Z: '--..'
}

def decode_char(str)
  @mores_codes.each do |key, value|
    return key if str == value
  end
end

puts decode_char '.-'

def decode_word(str)
  words = str.split
  word = ''
  words.each do |item|
    char = decode_char item
    word += char.to_s
  end
  word
end

puts decode_word '-- -.--'

def decode_sentence(str)
  words = str.split('   ')
  sentence = ''
  words.each do |item|
    word = decode_word item
    sentence += word
    sentence += ' '
  end
  sentence
end

puts decode_sentence '-- -.--   -. .- -- .'
