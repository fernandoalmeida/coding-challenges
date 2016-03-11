class Complement
  VERSION = 3

  COMPLEMENT = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(dna)
    dna.chars.map { |c| COMPLEMENT[c] || fail(ArgumentError) }.join
  end
end
