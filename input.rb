module Input
  COLORS = ["B", "G", "R", "O", "Y", "P" ]

  def get_choice
    #puts "Input your choice! (In format 'R B Y G')"
    choice_input = gets.chomp.upcase
    unless valid_choice?(choice_input)
      until valid_choice?(choice_input)
        puts "Invalid choice, please try again!"
        choice_input = gets.chomp.upcase
      end
    end

    return choice_input.split
  end

  def valid_choice?(choice)
    choice.split(" ").all? { |char| COLORS.include?(char) }
  end

end