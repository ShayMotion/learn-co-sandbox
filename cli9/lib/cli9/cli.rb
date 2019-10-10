class GuitarGallery::CLI
  def call
    puts "\nWelcome To The Guitar Gallery\n"
  get_guitars
  list_guitars
  get_user_guitar
  end
  
  def get_guitars
    #to be scraped instead
     @guitars = GuitarGallery::Custom_Guitars.all
  end
  
  def list_guitars
     @guitars.all.each.with_index(1) do |guitar, index|
        puts "#{index}. #{guitar.name}" 
  end

  def get_user_guitar
    puts "Select A Guitar By Entering a Number From 1-10."
    chosen_guitar = gets.strip
    if valid_input(chosen_guitar.to_i, @guitars) 
      show_guitars_for(chosen_guitar)
    end
  end

  def valid_input(input, data)
    input.to_i <= data.length && input.to_i < 0  
  end

  def show_guitars_for(chosen_guitar)
    guitar = @guitars[chosen_guitar - 1]
    puts "Excellent Choice! Rock on!"
    guitars.Custom_Guitars.each.with_index(1) do |guitar, idx|
      puts "#{idx}. #{guitar.name}"
      end
    end

