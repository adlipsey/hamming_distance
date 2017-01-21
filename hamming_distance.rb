class Hamming

  @@dna1 = []
  @@dna2 = []

  #Receive 2 DNA sequences from user
  def input_dna
    puts "Please enter the nucleotides (C,T,G,A) for strand one:"
    puts "(Do not put spaces or commas between letters)"
    dna1 = gets.chomp.upcase
    @@dna1 = dna1.split("")
    puts "DNA Strand 1 is now:"
    p @@dna1
    puts ""
    puts "Please enter the nucleotides (C,T,G,A) for strand two:"
    puts "(Do not put spaces or commas between letters)"
    dna2 = gets.chomp.upcase
    @@dna2 = dna2.split("")
    puts "DNA Strand 2 is now:"
    p @@dna2
  end

  #Check if user input is viable
  def is_valid?
    if @@dna1.length == @@dna2.length
      true
    else
      false
    end
  end

  #Generate 2 random DNA sequences
  def make_dna
    puts "How many nucleotides would you like in the DNA strands?"
    chain = gets.to_i
    chain.times do @@dna1 << ["C","G","T","A"].sample end
    chain.times do @@dna2 << ["C","G","T","A"].sample end
    puts "DNA Strand 1 is now:"
    p @@dna1
    puts "DNA Strand 2 is now:"
    p @@dna2
  end

  #Compare the two DNA sequences
  def compare_dna
    distance = 0
    for key in (0..@@dna1.length-1) do
      if @@dna1[key] != @@dna2[key]
        distance+=1
      else
        next
      end
    end
  puts "The Hamming distance of these two DNA strands is #{distance}"
  end
end

puts "Welcome to the Hamming Distance Calculator"
puts ""
trial = Hamming.new
puts "Please select an option:"
puts "Input - input own sequence of DNA nucleotides"
puts "Generate - generate two random DNA sequences"
choice = gets.chomp.downcase
case choice
when "input"
  trial.input_dna
  if trial.is_valid?
    trial.compare_dna
  else
    puts "DNA sequence lengths are not the same."
    puts "They must be equal to perform a valid Hamming distance."
  end
when "generate"
  trial.make_dna
  trial.compare_dna
else
  puts "That is not a valid menu option"
end
