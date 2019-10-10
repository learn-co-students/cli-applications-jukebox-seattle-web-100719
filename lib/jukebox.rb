# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  foo = false
  
  case input
  when 1
    puts "Playing #{songs[0]}"
    foo = true
  when 2
    puts "Playing #{songs[1]}"
    foo = true
  when 3
    puts "Playing #{songs[2]}"
    foo = true
  when 4
    puts "Playing #{songs[3]}"
    foo = true
  when 5
    puts "Playing #{songs[4]}"
    foo = true
  when 6
    puts "Playing #{songs[5]}"
    foo = true
  when 7
    puts "Playing #{songs[6]}"
    foo = true
  when 8
    puts "Playing #{songs[7]}"
    foo = true
  when 9
    puts "Playing #{songs[8]}"
    foo = true
  end
  
  songs.each do |song|
    if song[input]
      puts "Playing #{song}"
      foo = true
    end
  end
  
  if !foo
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
   puts "#{index+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = ""
  while input != "exit" do
    puts "Please enter a command:"
    input = gets.strip
    
    if input == "help"
      help
    end
    if input == "list"
      list(songs)
    end
    if input == "play"
      play(songs)
    end
    if input == "exit"
      exit_jukebox
    end
  end
end
