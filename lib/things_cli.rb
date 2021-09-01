def start_cli
    puts "Hi! Welcome to the Things CLI"
    main_menu
    handle_user_choice
    puts "Thanks for using the Things CLI!"
  end
  
  def main_menu
    puts "Here's what you can do:".cyan
    puts "  1. Add Thing".cyan
    puts "  2. List Things".cyan
    # Add other options like "edit thing, delete thing, etc..."
    puts "  exit".cyan
    puts "Type the number corresponding to your choice, or 'exit' to leave the program".cyan
  end

  def handle_user_choice
    input = gets.chomp
    
    # add conditional logic for what to do when a user types a certain input
  end

