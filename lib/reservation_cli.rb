RESERVATIONS = []

def start_cli
    puts "Hi! Welcome to the Things CLI"
    main_menu
    handle_user_choice
    puts "Thanks for using the Things CLI!"
  end
  
  def main_menu
    puts "Here's what you can do:".cyan
    puts "  1. Add a Reservation".cyan
    puts "  2. List Reservations".cyan
    # Add other options like "edit thing, delete thing, etc..."
    puts "  exit".cyan
    puts "Type the number corresponding to your choice, or 'exit' to leave the program".cyan
  end

  def handle_user_choice
    input = gets.chomp
    while input != "exit"
      if input == "1"
        reservation = add_reservation
        print_reservation(reservation)
      elsif input == "2"
        puts "All Reservations"
        RESERVATIONS.each do |reservation|
          print_reservation(reservation)
        end 
      else
        "Sorry don't understand your choice"
      end
      puts "What do you wanna do next?"
      main_menu
      input = gets.chomp
    end

    

    
    # add conditional logic for what to do when a user types a certain input
  end

  def add_reservation
    puts "1. When date would you like to place your reservation (MM/DD/YYYY)?"
    date = gets.chomp
    puts "2. What time?"
    time = gets.chomp
    puts "3. How many people are in your party?"
    amount = gets.chomp
    puts "4. Who should the reservation be under?"
    name = gets.chomp
    reservation = Reservation.new(date, time, amount, name)
    RESERVATIONS << reservation
    reservation

  end

  def print_reservation(reservation)
    puts ""
    puts reservation.name.blue
    puts "date: #{reservation.date}"
    puts "time: #{reservation.time}"
    puts "amount: #{reservation.amount}"

  end

