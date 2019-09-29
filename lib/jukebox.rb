def prompt_command
  puts "Please enter a command:"
end

def prompt_songs
  puts "Please enter a song name or number:"
end

def get_user_input
  gets.strip
end

def invalid_command
  puts "Invalid input, please try again"
end

def get_user_option(input, songs)
  case input
  when "help"
    help
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "exit"
    exit_jukebox
  else
    invalid_command
  end
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"

end

def list (songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def play (songs)
  prompt_songs
  songChoice = get_user_input
  if getSongName(songChoice, songs)
    puts "Playing #{getSongName(songChoice, songs)}"
  else
    invalid_command
  end
end

def getSongName(input, songs)
  if input.to_i.between?(1, songs.size)
    return songs[input.to_i-1]
  else
    songs.detect do |songName|
      songName.eql?(input)
    end
  end
end

def run(songs)
  prompt_command
  input = get_user_input
  commandOption = get_user_option(input, songs)

end
