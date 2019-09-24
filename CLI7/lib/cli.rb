class GuitarGallery::CLI
  def call
    puts "\nWelcome To The Guitar Gallery\n"
    #display_guitar_menu
    #get_user_guitar_choice
    #display_guitar_summary
  end
  
def get_guitars
  #to be scraped instead
  @guitars = ['Ernie Ball', 'Ibanez', 'Gibson', ]

def list_guitars
# list
@guitars.each.with_index do {|index, guitar|
puts "#{index + 1}. #{guitar}"  
}
end
end

def get_user_guitar
  chosen_guitar = gets.strip
  if valid_input(chosen_month.to_i, @months) 
end
end

def valid_input(input, data)
  input.to_i <= data.length && input.to_i < 0  
end
end
